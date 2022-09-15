package com.kuang.eduservice.controller.front;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.kuang.common.utils.R;
import com.kuang.eduservice.entity.EduCourse;
import com.kuang.eduservice.entity.EduTeacher;
import com.kuang.eduservice.service.EduCourseService;
import com.kuang.eduservice.service.EduTeacherService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * @Description:
 * @Author: StarSea99
 * @Date: 2020-10-29 15:02
 */
@Api(description = "讲师管理前端")
@RestController
@RequestMapping("/eduservice/teacherfront")
//@CrossOrigin
public class TeacherFrontController {

    @Autowired
    private EduTeacherService teacherService;

    @Autowired
    private EduCourseService courseService;

    @ApiOperation(value = "分页查询所有讲师")
    @PostMapping("getTeacherFrontList/{page}/{limit}")
    public R getTeacherFrontList(@PathVariable long page,@PathVariable long limit) {
        Page<EduTeacher> pageTeacher = new Page<>(page, limit);
        Map<String,Object> map = teacherService.getTeacherFrontList(pageTeacher);
        //返回封装的数据
        return R.ok().data(map);
    }

    @ApiOperation(value = "讲师详情功能")
    @GetMapping("getTeacherFrontInfo/{teacherId}")
    public R getTeacherFrontInfo(@PathVariable String teacherId) {
        //根据讲师id 查询讲师基本信息
        EduTeacher teacher = teacherService.getById(teacherId);

        //根据讲师id 查询课程基本信息
        QueryWrapper<EduCourse> wrapper = new QueryWrapper<>();
        wrapper.eq("teacher_id",teacherId);
        List<EduCourse> courseList = courseService.list(wrapper);

        return R.ok().data("teacher",teacher).data("courseList",courseList);
    }

}
