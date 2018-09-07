package com.elens.oauth.elensoauth.service;



import com.elens.oauth.elensoauth.model.Permission;

import java.util.List;

public interface PermissionService {
    public List<Permission> findAll();
    public List<Permission> findByAdminUserId(int userId);
}
