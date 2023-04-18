package com.csc340.Progress.ad;
/**
 * Last Updated: 4/6/2023
 * This class manages the mapping of database entities to different views and endpoints
 * Authors: Dallin Pierce
 */

import com.csc340.Progress.user.UserService;
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
 * @author Dallin Pierce
 */
@Controller
@RequestMapping("/trainers")
public class AdController {
    
    @Autowired
    AdService adService;
    
    @Autowired
    UserService userService;
    
    @GetMapping("/all")
    public String getAds(Authentication auth, Model model) {  
        UserDetails userPrincipal = (UserDetails)auth.getPrincipal();
        model.addAttribute("currentUser", userService.getUserByUsername(userPrincipal.getUsername()));
        model.addAttribute("adList", adService.getAllAds());
        return "ad/trainers";
    }

    @GetMapping("/id={adId}")
    public String getAd(@PathVariable long adId, Model model) {
        model.addAttribute("ad", adService.getAd(adId));
        return "ad/view_ad";
    }
    
    @PostMapping("/create")
    public String createAd(Ad ad) {
        adService.saveAd(ad);
        return "redirect:/trainers/all";
    }

    @GetMapping("/new-ad")
    public String newAdForm(Authentication auth, Model model) {
        UserDetails userPrincipal = (UserDetails)auth.getPrincipal();
        model.addAttribute("currentUser", userService.getUserByUsername(userPrincipal.getUsername()));
        return "ad/post";
    }
    
}
