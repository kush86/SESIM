package ucsc.mis.orm.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "permission")
public class Permission implements Serializable {

    private static final long serialVersionUID = -1550816135594806834L;

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private Long id;

    @Column(name = "permission_name", unique = true, nullable = false)
    private String name;

    @Column(name = "description")
    private String description;

    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "permissionList")
    private List<UserCategory> userCategoryList;

    @OneToOne(cascade = CascadeType.PERSIST)
    @JoinColumn(name = "depends_on_permission_id")
    private Permission dependsOn;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Permission getDependsOn() {
        return dependsOn;
    }

    public void setDependsOn(Permission dependsOn) {
        this.dependsOn = dependsOn;
    }

    public List<UserCategory> getUserCategoryList() {
        return userCategoryList;
    }

    public void setUserCategoryList(List<UserCategory> userCategoryList) {
        this.userCategoryList = userCategoryList;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Permission that = (Permission) o;

        if (!id.equals(that.id)) return false;
        return name.equals(that.name);
    }

    @Override
    public int hashCode() {
        int result = id.hashCode();
        result = 31 * result + name.hashCode();
        return result;
    }
}
