package rep;

import entity.Entitybus;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface EntitybusRepository extends CrudRepository<Entitybus, Long> {
    List<Entitybus> findAllByEnumber(String id);
    List<Entitybus> findAllByEid(int eid);



}