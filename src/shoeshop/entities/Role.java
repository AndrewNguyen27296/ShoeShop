package shoeshop.entities;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Roles")
public class Role {
	@Id
	@GeneratedValue
	String id;
	
	String name;
	
	/*
	 * 2 One to Many (ActionRole & MasterRole)
	 * */
	@OneToMany(mappedBy="role")
	Collection<ActionRole> actionRoles;
	
	@OneToMany(mappedBy="role")
	Collection<MasterRole> masterRoles;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Collection<ActionRole> getActionRoles() {
		return actionRoles;
	}

	public void setActionRoles(Collection<ActionRole> actionRoles) {
		this.actionRoles = actionRoles;
	}

	public Collection<MasterRole> getMasterRoles() {
		return masterRoles;
	}

	public void setMasterRoles(Collection<MasterRole> masterRoles) {
		this.masterRoles = masterRoles;
	}
	
	
}