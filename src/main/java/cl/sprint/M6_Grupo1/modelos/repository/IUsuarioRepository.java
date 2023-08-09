package cl.sprint.M6_Grupo1.modelos.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.sprint.M6_Grupo1.modelos.entity.Usuario;


public interface IUsuarioRepository extends JpaRepository<Usuario,Integer>{

}
