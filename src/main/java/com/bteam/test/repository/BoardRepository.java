package com.bteam.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bteam.test.model.Board;

public interface BoardRepository extends JpaRepository<Board, Long> {

}
