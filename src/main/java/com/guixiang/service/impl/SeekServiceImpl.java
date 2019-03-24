package com.how2java.service.impl;

import com.how2java.mapper.SeekMapper;
import com.how2java.pojo.Seek;
import com.how2java.service.SeekService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class SeekServiceImpl implements SeekService {
    @Autowired
    SeekMapper seekMapper;

    public List<Seek> seek(){
        return seekMapper.seek();
    }
    public void insert1(Seek seek) {
        seekMapper.insert1(seek);
    }
}
