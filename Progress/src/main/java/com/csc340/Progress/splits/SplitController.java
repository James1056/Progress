package com.csc340.Progress.splits;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/splits")
public class SplitController {
    
    @Autowired
    SplitService splitService;

    @GetMapping("/all")
    public String getSplits(Model model) {
        model.addAttribute("splitList", splitService.getAllSplits());
        return "splits/list-splits";
    }

    @GetMapping("/id={splitID}")
    public String getSplit(@PathVariable long splitID, Model model) {
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
    public String newSplitForm(Model model) {
        return "splits/new-split";
    }


}
