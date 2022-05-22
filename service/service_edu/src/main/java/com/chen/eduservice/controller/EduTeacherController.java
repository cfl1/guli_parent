package com.chen.eduservice.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chen.commonutils.R;
import com.chen.eduservice.entity.EduTeacher;
import com.chen.eduservice.entity.vo.TeacherQuery;
import com.chen.eduservice.service.EduTeacherService;
import com.chen.servicebase.config.exceptionhandler.GuliException;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>
 * 讲师 前端控制器
 * </p>
 *
 * @author chenfl
 * @since 2021-01-22
 */
@Api(description = "讲师管理")
@RestController
@RequestMapping("/eduservice/teacher")
public class EduTeacherController {

    @Resource//把service注入
    private EduTeacherService teacherService;

    /**
     * 查询讲师表所有数据
     * @return
     */
    @ApiOperation(value = "所有讲师列表")
    @GetMapping(value = "findAll")
    public R findAllTeacher() {
        //调用service的方法实现查询所有操作
        List<EduTeacher> list = teacherService.list(null);
        return R.ok().data("items", list);
    }

    /**
     * 逻辑删除讲师的方法
     * @param id 删除的id
     * @return
     */
    @DeleteMapping("{id}")
    public R removeById(
            @ApiParam(name = "id", value = "讲师ID", required = true)
            @PathVariable String id) {
        boolean flag = teacherService.removeById(id);
        if (flag) {
            return R.ok();
        } else {
            return R.error();
        }
    }

    /**
     * 分页查询讲师的方法
     * @param current 当前页
     * @param limit 每页条数
     * @return
     */
    @GetMapping("pageTeacher/{current}/{limit}")
    public R pageTeacher(@PathVariable long current,@PathVariable long limit) {
        //创建page对象
        Page pageTeacher = new Page<>(current, limit);
        try {
            int a = 10/0;
        }catch(Exception e) {
            throw new GuliException(20001,"出现自定义异常");
        }
        //调用方法实现分页,底层封装,把分页所有数据封装到pageTeacher对象里面
        teacherService.page(pageTeacher, null);
        long total = pageTeacher.getTotal();//总记录数
        List records = pageTeacher.getRecords();//数据list集合
        //方式一
//        HashMap map = new HashMap<>();
//        map.put("total", total);
//        map.put("rows", records);
//        return R.ok().data(map);
        //方式二
        return R.ok().data("total", total).data("rows", records);
    }

    /**
     * 调用方法实现条件查询分页
     * @param current
     * @param limit
     * @param teacherQuery
     * @return
     */
    @PostMapping("pageTeacherCondition/{current}/{limit}")
    public R pageTeacherCondition(@PathVariable long current, @PathVariable long limit,@RequestBody(required = false) TeacherQuery teacherQuery) {
        //创建page对象
        Page pageTeacher = new Page<>(current, limit);
        //构建条件
        QueryWrapper<EduTeacher> wrapper = new QueryWrapper<>();
        //多条件组合查询  动态sql
        String name = teacherQuery.getName();
        Integer level = teacherQuery.getLevel();
        String begin = teacherQuery.getBegin();
        String end = teacherQuery.getEnd();
        if (!StringUtils.isEmpty(name)) {
            wrapper.like("name", name);
        }
        if (!StringUtils.isEmpty(level)) {
            wrapper.eq("level", level);
        }
        if (!StringUtils.isEmpty(begin)) {
            wrapper.gt("gmt_create", begin);
        }
        if (!StringUtils.isEmpty(end)) {
            wrapper.lt("gmt_create", end);
        }

        //调用方法实现分页,底层封装,把分页所有数据封装到pageTeacher对象里面
        teacherService.page(pageTeacher, wrapper);
        long total = pageTeacher.getTotal();//总记录数
        List records = pageTeacher.getRecords();//数据list集合
        return R.ok().data("total", total).data("rows", records);
    }

    /**
     * 添加讲师接口的方法
     * @param eduTeacher
     * @return
     */
    @PostMapping("addTeacher")
    public R addTeacher(@RequestBody EduTeacher eduTeacher) {
        boolean save = teacherService.save(eduTeacher);
        if (save) {
            return R.ok();
        } else {
            return R.error();
        }
    }

    /**
     * 根据ID查询讲师
     * @param id
     * @return
     */
    @ApiOperation(value = "根据ID查询讲师")
    @GetMapping("getTeacher/{id}")
    public R getTeacherById(
            @ApiParam(name = "id", value = "讲师ID", required = true)
            @PathVariable String id){

        EduTeacher eduTeacher = teacherService.getById(id);
        return R.ok().data("item", eduTeacher);
    }


    /**
     * 根据ID修改讲师
     * @param id
     * @return
     */
    @ApiOperation(value = "根据ID修改讲师")
    @PutMapping("updateTeacher/{id}")
    public R updateById(
            @ApiParam(name = "id", value = "讲师ID", required = true)
            @PathVariable String id,
            @ApiParam(name = "teacher", value = "讲师对象", required = true)
            @RequestBody EduTeacher eduTeacher){
        eduTeacher.setId(id);
        boolean flag = teacherService.updateById(eduTeacher);
        if (flag) {
            return R.ok();
        } else {
            return R.error();
        }
    }

}

