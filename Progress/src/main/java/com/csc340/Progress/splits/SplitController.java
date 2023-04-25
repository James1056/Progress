package com.csc340.Progress.splits;

import com.csc340.Progress.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/splits")
public class SplitController {
    
    @Autowired
    SplitService splitService;
    
    @Autowired
    UserService userService;

    @GetMapping("/all")
    public String getSplits(Authentication auth, Model model) {
        UserDetails userPrincipal = (UserDetails)auth.getPrincipal();
        model.addAttribute("currentUser", userService.getUserByUsername(userPrincipal.getUsername()));
        model.addAttribute("splitList", splitService.getAllSplits());
        return "splits/list-splits";
    }

    @GetMapping("/id={splitID}")
    public String getSplit(@PathVariable long splitID, Authentication auth, Model model) {
        UserDetails userPrincipal = (UserDetails)auth.getPrincipal();
        model.addAttribute("currentUser", userService.getUserByUsername(userPrincipal.getUsername()));
        model.addAttribute("split", splitService.getSplit(splitID));
        return "splits/view-split";

    }

    @PostMapping("/create")
    public String createSplit(Split split) {

        splitService.saveSplit(split);
        return "redirect:/splits/all";
    }

    @PostMapping("/update")
    public String updateSplit(Split split) {
        splitService.saveSplit(split);
        return "redirect:/splits/all";
    }

    @GetMapping("/new-split")
    public String newSplitForm(Authentication auth, Model model) {
        UserDetails userPrincipal = (UserDetails)auth.getPrincipal();
        model.addAttribute("currentUser", userService.getUserByUsername(userPrincipal.getUsername()));
        return "splits/new-split";
    }


}
