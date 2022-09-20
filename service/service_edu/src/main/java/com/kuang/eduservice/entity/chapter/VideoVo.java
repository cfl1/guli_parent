package com.kuang.eduservice.entity.chapter;

import io.swagger.annotations.ApiModel;
import lombok.Data;

/**
 * @Description:
 * @Author: chenfl
 * @Date: 2020-10-19 12:26
 */
@ApiModel(value = "小节封装类",description = "小节封装类")
@Data
public class VideoVo {

    private String id;

    private String title;

    private Boolean isFree;

    private String videoSourceId;//视频id
}
