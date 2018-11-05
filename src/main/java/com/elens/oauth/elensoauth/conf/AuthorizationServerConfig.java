package com.elens.oauth.elensoauth.conf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.NoSuchClientException;
import org.springframework.security.oauth2.provider.client.JdbcClientDetailsService;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.JdbcTokenStore;

import javax.sql.DataSource;

@Configuration
// 这个注解告诉 Spring 这个应用是 OAuth2 的授权服务器
// 提供/oauth/authorize,/oauth/token,/oauth/check_token,/oauth/confirm_access,/oauth/error
@EnableAuthorizationServer
public class AuthorizationServerConfig extends AuthorizationServerConfigurerAdapter {


    @Value("${elens.oauth.client.scret}")
    private String clientScret;

    @Autowired
    @Qualifier("authenticationManagerBean")
    private AuthenticationManager authenticationManager;

    @Autowired
    @Qualifier("dataSource")
    private DataSource dataSource;

    @Autowired
    private UserDetailsService userDetailsService;

    @Autowired
    private PasswordEncoder passwordEncoder;


    @Bean
    public TokenStore tokenStore() {
        //使用内存中的 token store
        //return new InMemoryTokenStore();
        //使用Jdbctoken store
        return new JdbcTokenStore(dataSource);
    }

    @Bean
    public JdbcClientDetailsService jdbcClientDetailsService() {
        return new JdbcClientDetailsService(dataSource);
    }

    @Override
    public void configure(ClientDetailsServiceConfigurer clients) {

        try {
            jdbcClientDetailsService().removeClientDetails("client_1");
            jdbcClientDetailsService().removeClientDetails("client_code");
        } catch (NoSuchClientException e) {
        }


        try {
            clients.jdbc(dataSource)
                    //                .withClient("client")
                    //                .secret(passwordEncoder.encode("123456"))
                    //                .authorizedGrantTypes("password", "refresh_token")//允许授权范围 (密码授权和刷新令牌)
                    //                .authorities("ROLE_ADMIN", "ROLE_USER")//客户端可以使用的权限
                    //                .scopes("read", "write")
                    //                .accessTokenValiditySeconds(7200)
                    //                .refreshTokenValiditySeconds(10000)

                    //客户端模式
                    //.and()
                    .withClient("client_1")
                    .secret(passwordEncoder.encode(clientScret))
                    .authorizedGrantTypes("client_credentials")
                    .scopes("read", "write")
                    .authorities("client_credentials")
                    .accessTokenValiditySeconds(300)
                    //授权码模式
                    .and()
                    .withClient("client_code")
                    .secret(passwordEncoder.encode(clientScret))
                    .authorizedGrantTypes("authorization_code", "refresh_token","password", "implicit")
                    .scopes("all")
                    .authorities("ROLE_ADMIN")
                    .redirectUris("/auth")
                    .accessTokenValiditySeconds(200)
                    .refreshTokenValiditySeconds(600);
        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    @Override
    public void configure(AuthorizationServerEndpointsConfigurer endpoints) throws Exception {
        endpoints.tokenStore(tokenStore())
                .authenticationManager(authenticationManager)
                //必须设置 UserDetailsService 否则刷新token 时会报错
                .userDetailsService(userDetailsService);

//        //自定义授权页
        endpoints.pathMapping("/oauth/confirm_access", "/confirm");


    }


    @Override
    public void configure(AuthorizationServerSecurityConfigurer security) throws Exception {
        security
                .tokenKeyAccess("permitAll()")
                .checkTokenAccess("isAuthenticated()")
                .allowFormAuthenticationForClients();//允许表单登录

    }
}
