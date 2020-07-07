package net.codejava.rider;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface RiderRepository extends CrudRepository<Rider, Long>{
	
	
	@Query(value = "SELECT c FROM Rider c WHERE c.RiderName Like'%' || :keyword || '%'"+ "OR c.RiderEmail Like'%' || :keyword || '%'"+ "OR c.RiderAddress Like'%' || :keyword || '%'")
	public List<Rider> search(@Param("keyword") String keyword);

}
