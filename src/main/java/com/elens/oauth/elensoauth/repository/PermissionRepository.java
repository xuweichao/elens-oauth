package com.elens.oauth.elensoauth.repository;

import com.elens.oauth.elensoauth.model.Permission;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PermissionRepository extends CrudRepository<Permission,Integer> {

}
