package zkart.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import zkart.entity.Account;
import zkart.entity.DealNew;

public interface DealNewRepository extends CrudRepository<DealNew, Integer>{
	
}
