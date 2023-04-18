package com.csc340.Progress.info;

import com.csc340.Progress.user.UserService;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author tdlga
 */
@Controller
@RequestMapping("/info")
public class InfoController {

    @Autowired
    InfoService infoService;
    
    @Autowired
    UserService userService;

    @GetMapping("/all")
    public String getInfos( Authentication auth, Model model) {
        
        UserDetails userPrincipal = (UserDetails)auth.getPrincipal();
        model.addAttribute("currentUser", userService.getUserByUsername(userPrincipal.getUsername()));
        List<Info> infoList = infoService.getAllInfo();
        Collections.reverse(infoList);
        model.addAttribute("infoList", infoList);
        return "info/list-infos";
    }

    @GetMapping("/id={infoID}")
    public String getInfo(@PathVariable long infoID, Authentication auth, Model model) {
        UserDetails userPrincipal = (UserDetails)auth.getPrincipal();
        model.addAttribute("currentUser", userService.getUserByUsername(userPrincipal.getUsername()));
        model.addAttribute("info", infoService.getInfo(infoID));
        return "info/info-detail";
    }

    @GetMapping("/delete/id={infoID}")
    public String deleteInfo(@PathVariable long infoID, Model model) {
        infoService.deleteInfo(infoID);
        return "redirect:/info/all";
    }

    @GetMapping("/gym")
    public String getGymInfo(Authentication auth, Model model) {
        UserDetails userPrincipal = (UserDetails)auth.getPrincipal();
        model.addAttribute("currentUser", userService.getUserByUsername(userPrincipal.getUsername()));
        model.addAttribute("infoList", infoService.getGymInfo());
        return "info/gym-info";
    }

    @PostMapping("/create")
    public String createInfo(Info info) {
        info.setDate(new Date());
        infoService.saveInfo(info);
        return "redirect:/info/all";
    }

    @PostMapping("/update")
    public String updateInfo(Info info) {
        info.setDate(new Date());
        infoService.saveInfo(info);
        return "redirect:/info/all";
    }

    @GetMapping("/new-info")
    public String newInfoForm(Authentication auth, Model model) {
        UserDetails userPrincipal = (UserDetails)auth.getPrincipal();
        model.addAttribute("currentUser", userService.getUserByUsername(userPrincipal.getUsername()));
        return "info/new-info";
    }

    @GetMapping("/update/id={infoID}")
    public String updateInfoForm(@PathVariable long infoID, Authentication auth, Model model) {
        UserDetails userPrincipal = (UserDetails)auth.getPrincipal();
        model.addAttribute("currentUser", userService.getUserByUsername(userPrincipal.getUsername()));
        model.addAttribute("info", infoService.getInfo(infoID));
        return "info/update-info";
    }

}
