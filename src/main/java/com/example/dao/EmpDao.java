package com.example.dao;

import com.example.model.EmpBean;
import java.util.ArrayList;
import java.util.List;

public class EmpDao {

    private static EmpDao dao;

    private EmpDao() {
    }

    public static EmpDao getInstance() {
        if (dao == null) {
            dao = new EmpDao();
        }

        return dao;
    }

    public List<EmpBean> selectEmpList() {
        List<EmpBean> empBeanList = new ArrayList<>();

        empBeanList.add(EmpBean.builder()
                   .empno(7878)
                   .ename("오경민")
                   .sal(7000)
                   .mgr(7879)
                   .comn(500)
                   .hiredate("2022/05/03")
                   .deptno(10)
                   .build());

        empBeanList.add(EmpBean.builder()
                   .empno(7879)
                   .ename("김가영")
                   .sal(9000)
                   .mgr(7878)
                   .comn(500)
                   .hiredate("2022/05/03")
                   .deptno(10)
                   .build());

        empBeanList.add(EmpBean.builder()
                   .empno(7880)
                   .ename("김진근")
                   .sal(10000)
                   .mgr(7878)
                   .comn(300)
                   .hiredate("2019/05/03")
                   .deptno(10)
                   .build());

        return empBeanList;
    }
}
