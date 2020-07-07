package net.codejava.rider;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RiderService {
    @Autowired
	private RiderRepository repo;
    
    public List<Rider> listAll() {
    	return (List<Rider>) repo.findAll();
    }
    public void save(Rider rider)
    {
    	repo.save(rider);
    }
    public Rider get(long id)
    {
    	Optional<Rider> result = repo.findById(id);
    	return result.get();
    }
    
    public void delete(long id)
    {
    	repo.deleteById(id);
    	}
    
    public List<Rider> search(String keyword){
    	return repo.search(keyword);
    }
}
