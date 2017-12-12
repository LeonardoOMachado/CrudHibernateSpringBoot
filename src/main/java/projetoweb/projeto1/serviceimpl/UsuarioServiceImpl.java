package projetoweb.projeto1.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import projetoweb.projeto1.model.Usuario;
import projetoweb.projeto1.repository.UsuarioRepository;
import projetoweb.projeto1.service.UsuarioService;

@Service
public class UsuarioServiceImpl implements UsuarioService{

	@Autowired
	UsuarioRepository usuarioRepository;
	
	@Override
	public Usuario save(Usuario usuario) {
		return usuarioRepository.save(usuario);
	}

	@Override
	public List<Usuario> findAll() {		
		return usuarioRepository.findAll();
	}

	@Override
	public Usuario findById(Long id) {					
		return usuarioRepository.findOne(id);
	}
	
	@Override
	public void delete(Long id){		
		usuarioRepository.delete(id);
	}

	
	public void update(Long id , Usuario usuario){
		
	}
}
