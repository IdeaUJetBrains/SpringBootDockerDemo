package rest;

import entity.Entitybus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import rep.EntitybusRepository;

@RestController
@RequestMapping("/entitybus")
public class EntitybusController {
    @Autowired
    private EntitybusRepository entitybusRepository;

    @GetMapping
    public Iterable findAll1() {
        return entitybusRepository.findAll();
    }

    @RequestMapping("/post")
    public Iterable postEntity() {
        Entitybus o = new Entitybus();
        o.setEid(5);
        o.setEnumber("blah");
        entitybusRepository.save(o);
        return entitybusRepository.findAll();
    }


}