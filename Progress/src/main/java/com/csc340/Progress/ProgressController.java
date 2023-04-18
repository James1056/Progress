package com.csc340.Progress;

import com.csc340.Progress.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author Dallin Pierce
 */
@Controller
public class ProgressController {
    
    @Autowired
    UserService userService;
        
    @GetMapping(value ={ "", "/", "/dashboard"})
    public String dashboard(Authentication auth, Model model) {
        UserDetails userPrincipal = (UserDetails)auth.getPrincipal();
        model.addAttribute("currentUser", userService.getUserByUsername(userPrincipal.getUsername()));
        return "index";
    }
    
    @GetMapping("/login")
    public String login() {
        return "login";
    }
    
    @GetMapping("/403")
    public String _403() {
        return "403";
    }
}
