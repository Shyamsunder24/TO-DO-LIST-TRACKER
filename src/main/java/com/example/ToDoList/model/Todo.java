package com.example.ToDoList.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Todo {
    @Id
    private int tid;
    private String tname;
    private String tstatus;

    public Todo(){}

    public Todo(int tid, String tname, String tstatus) {
        this.tid = tid;
        this.tname = tname;
        this.tstatus = tstatus;
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getTstatus() {
        return tstatus;
    }

    public void setTstatus(String tstatus) {
        this.tstatus = tstatus;
    }
}
