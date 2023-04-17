package com.csc340.Progress.partnerRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.csc340.Progress.user.User;
import com.csc340.Progress.user.UserService;





@Controller
@RequestMapping("/partner")
public class PartnerController {

    @Autowired
    PartnerService partnerService;

    @Autowired
    UserService userService;

    @GetMapping("partnerRequests")
    public String getQuestions(Model model) {
        model.addAttribute("requests", partnerService.getAllRequests());
        return "partnerRequest/partner_requests";
    }

    @GetMapping("/partnerPost")
    public String newParnterPost(Model model) {
        return "partnerRequest/partner_request_form";
    }

    @PostMapping("/createPartnerPost")
    public String createRequest(PartnerRequest partnerRequest) {
        partnerService.saveRequest(partnerRequest);
        return "redirect:/partner/partnerRequests";
    }

    @GetMapping("/message/id={id}")
    public String goToMessage(@PathVariable long id, Model model, Authentication auth) {
        UserDetails userPrincipal = (UserDetails)auth.getPrincipal();
        model.addAttribute("currentUser", userService.getUserByUsername(userPrincipal.getUsername()));
        model.addAttribute("request", partnerService.getRequest(id));
        model.addAttribute("messages", partnerService.getMessagesByRequestId(id));
        return "partnerRequest/viewquestion";
    }

    @PostMapping("/createNewMessage") 
        public String createMessage(Authentication auth, Message message) {
            partnerService.saveMessage(message);
            return "redirect:/partner/partnerRequests";
        }
    
    
}
