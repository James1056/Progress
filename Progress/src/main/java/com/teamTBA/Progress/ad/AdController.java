package com.teamTBA.Progress.ad;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
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
    
    @GetMapping("/all")
        public String getAds(Model model) {
        model.addAttribute("adList", adService.getAllAds());
        return "ad/trainers";
    }

//    @GetMapping("/id={adId}")
//    public String getAd(@PathVariable long adId, Model model) {
//        model.addAttribute("ad", adService.getad(adId));
//        return "ad-detail";
//    }
//
//    @GetMapping("/delete/id={adId}")
//    public String deleteAd(@PathVariable long adId, Model model) {
//        adService.deletead(adId);
//        return "redirect:/trainers/all";
//    }
//
    @PostMapping("/create")
    public String createAd(Ad ad) {

        adService.saveAd(ad);
        return "redirect:/trainers/all";
    }
//
//    @PostMapping("/update")
//    public String upateAd(Ad ad) {
//        adService.saveAd(ad);
//        return "redirect:/trainers/all";
//    }
//
    @GetMapping("/new-ad")
    public String newAdForm(Model model) {
        return "ad/post";
    }
//
//    @GetMapping("/update/id={adId}")
//    public String updateAdForm(@PathVariable long adId, Model model) {
//        model.addAttribute("ad", adService.getAd(adId));
//        return "update-ad";
//    }
    
}
