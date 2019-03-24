package com.how2java.controller;


import com.how2java.pojo.Seek;
import com.how2java.service.SeekService;
import com.how2java.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("")

public class SeekController {
    @Autowired

    SeekService seekservice;

    @RequestMapping("insert1")
    public ModelAndView insert1(Seek seek){

        seekservice.insert1(seek);
        ModelAndView mav =new ModelAndView("search2");
        return mav;
    }
    @RequestMapping("solve")
    public ModelAndView solve(Page page){
        ModelAndView mav = new ModelAndView("solve");
        List<Seek> seek= seekservice.seek();
        // 放入转发参数
        mav.addObject("seek", seek);
        // 放入jsp路径
        return mav;
    }
}
