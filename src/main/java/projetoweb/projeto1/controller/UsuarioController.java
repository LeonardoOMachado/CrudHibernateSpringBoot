package projetoweb.projeto1.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import projetoweb.projeto1.model.Usuario;
import projetoweb.projeto1.service.UsuarioService;

@Controller
public class UsuarioController {

	@Autowired
	UsuarioService usuarioService;
	
	@GetMapping("/usuario/cadastro")
	public ModelAndView formUsuario(){
		ModelAndView mv = new ModelAndView("/usuario/form_usuario");		
		mv.addObject("usuario" , null );
		mv.addObject("action", "Cadastrar");
		return mv;
	}
	
	@PostMapping("/usuario/cadastro")
	public String cadastrarUsuario(Usuario usuario){
		usuarioService.save(usuario);
		return "redirect:/usuario/";
	}
	
	@GetMapping("/usuario/alterar/{id}")
	public ModelAndView formUsuario(@PathVariable Long id){		
		ModelAndView mv = new ModelAndView("/usuario/form_usuario");		
		mv.addObject("usuario" , usuarioService.findById(id));
		mv.addObject("action" , "Editar");
		return mv;		
	}
	
	@PostMapping("/usuario/alterar/{id}")
	public String olamundo(Usuario usuario){
		usuarioService.delete(usuario.getId());
		return cadastrarUsuario(usuario);		
	}
	
	
	@GetMapping("/usuario/{id}")
	public ModelAndView userInfo(@PathVariable Long id){
		ModelAndView mv = new ModelAndView("/usuario/usuarios");
		List<Usuario> usuarios = new ArrayList<>();
		usuarios.add(usuarioService.findById(id));
		mv.addObject("usuarios" , usuarios);
		return mv;
	}
	
	
	@GetMapping("/usuario")
	public ModelAndView usersInfo(){
		ModelAndView mv = new ModelAndView("/usuario/usuarios");		
		mv.addObject("usuarios" , usuarioService.findAll());
		return mv;
	}
	
	@GetMapping("/usuario/deletar/{id}")
	public String deleteUser(@PathVariable Long id){
		usuarioService.delete(id);
		return "redirect:/usuario/";
	}
}
