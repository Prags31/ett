package employee.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import employee.model.User;

@Repository
public class UserDao {     //userdao is data service layer obj
	
	
	@Autowired    //spring will inject hibernatetemp
	private HibernateTemplate hibernateTemplate;  //to reach db

	public int saveUser(User user) {
		int id = (Integer) this.hibernateTemplate.save(user);
		return id;
		
	}
	
	
}
