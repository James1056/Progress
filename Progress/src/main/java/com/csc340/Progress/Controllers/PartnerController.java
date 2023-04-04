package com.csc340.Progress.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
// import org.springframework.web.bind.annotation.PathVariable;
// import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.csc340.Progress.Service.PartnerService;


@Controller
@RequestMapping("/progress")
public class PartnerController {

    @Autowired
    PartnerService progressService;

    @GetMapping("partnerRequests")
    public String getQuestions(Model model) {
        model.addAttribute("requests", progressService.getAllRequests());
        return "/partner_requests";
    }

    @GetMapping("/partnerPost")
    public String newParnterPost(Model model) {
        return "/partner_request_form.html";
    }
    
}
