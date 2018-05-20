package com.zyd.shiro;

import org.junit.Test;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * @author yadong.zhang (yadong.zhang0415(a)gmail.com)
 * @version 1.0
 * @date 2018/5/17 11:35
 * @since 1.0
 */
public class ListUtilTest {

    @Test
    public void list2String(){
        List<String> list = new ArrayList<>();
        for(int i = 0 ; i < 10; i ++){
            list.add(i + 100 + "");
        }
        // 类js中的array.join(,)方法
        System.out.println(StringUtils.collectionToDelimitedString(list, ","));;
        System.out.println(StringUtils.arrayToDelimitedString(list.toArray(new String[list.size()]), ","));;
    }
}
