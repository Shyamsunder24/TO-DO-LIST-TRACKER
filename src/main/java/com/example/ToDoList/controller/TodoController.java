package com.example.ToDoList.controller;

import com.example.ToDoList.model.Todo;
import com.example.ToDoList.repository.TodoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@Controller
public class TodoController {

    @RequestMapping("/")
    public String home(){
        return "home.jsp";
    }

    @Autowired
    TodoRepository todoRepository;

    @RequestMapping("/addTodo")
    public String addTodo(Todo t){
        todoRepository.save(t);
        return "home.jsp";
    }

    @RequestMapping("/showTodos")
    public ModelAndView showTodos(){
        ModelAndView mv=new ModelAndView("show.jsp");
        List<Todo> todo= todoRepository.findAll();
        mv.addObject("todos",todo);
        return mv;
    }

    @RequestMapping("/deleteTodo")
    public String deleteTodo(@RequestParam int tid){
        todoRepository.deleteById(tid);
        return "home.jsp";
    }

    @RequestMapping("/updateTodo")
    public String updateTodo(@RequestParam int tid,String tstatus){
        Optional<Todo> optionalTodo = todoRepository.findById(tid);

        if (optionalTodo.isPresent()) {
            Todo todo = optionalTodo.get();
            todo.setTstatus(tstatus);
            todoRepository.save(todo);
        }
        return "home.jsp";
    }

}
