package csc340.Progress.info;

import org.springframework.beans.factory.annotation.Autowired;
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

    @GetMapping("/all")
    public String getInfos(Model model) {
        model.addAttribute("infoList", infoService.getAllInfo());
        return "info/list-infos";
    }

    @GetMapping("/id={infoID}")
    public String getInfo(@PathVariable long infoID, Model model) {
        model.addAttribute("info", infoService.getInfo(infoID));
        return "info/info-detail";
    }

    @GetMapping("/delete/id={infoID}")
    public String deleteInfo(@PathVariable long infoID, Model model) {
        infoService.deleteInfo(infoID);
        return "redirect:/info/all";
    }

    @PostMapping("/create")
    public String createInfo(Info info) {
        infoService.saveInfo(info);
        return "redirect:/info/all";
    }

    @PostMapping("/update")
    public String updateInfo(Info info) {
        infoService.saveInfo(info);
        return "redirect:/info/all";
    }

    @GetMapping("/new-info")
    public String newInfoForm(Model model) {
        return "info/new-info";
    }

    @GetMapping("/update/id={infoID}")
    public String updateInfoForm(@PathVariable long infoID, Model model) {
        model.addAttribute("info", infoService.getInfo(infoID));
        return "info/update-info";
    }

}
