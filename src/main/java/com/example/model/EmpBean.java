package com.example.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class EmpBean {
    private int empno;
    private String ename;
    private int sal;
    private int mgr;
    private int comn;
    private String hiredate;
    private int deptno;
}
