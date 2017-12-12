package projetoweb.projeto1.service;

import java.util.List;

import projetoweb.projeto1.model.Usuario;


public interface UsuarioService {
	
	public Usuario save(Usuario usuario);
	public List<Usuario> findAll();
	public Usuario findById(Long id);
	public void delete(Long id);
}
