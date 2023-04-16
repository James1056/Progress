package com.csc340.Progress;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author Dallin Pierce
 */
@Controller
public class ProgressController {
    
    @GetMapping("dashboard")
    public String getAds() {
        return "index";
    }
    
    @GetMapping("/login")
    public String login() {
        return "login";
    }
}
