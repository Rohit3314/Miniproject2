package package1;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class Employeemain {

	public static void main(String[] args)
	{
		Configuration configuration = new Configuration();
		configuration.configure("hibernate.cfg.xml");
		
		SessionFactory sessionfactory = configuration.buildSessionFactory();
		Session session = sessionfactory.openSession();
		Transaction tx = session.beginTransaction();
		
		Employee e = new Employee();
		e.setEid(101);
		e.setEname("Rohan");
        e.setEemail("rohan@gmail.com");
        
        session.save(e);
        tx.commit();
	}

}
