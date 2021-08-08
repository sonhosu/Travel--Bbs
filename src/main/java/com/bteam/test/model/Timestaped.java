package com.bteam.test.model;

import java.time.LocalDateTime;

import javax.persistence.EntityListeners;
import javax.persistence.MappedSuperclass;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
@MappedSuperclass //멤버변수가 컬럼이되도록 함
@EntityListeners(AuditingEntityListener.class)
public class Timestaped {

	//생성시간
	@CreatedDate
	private LocalDateTime createAt;
	
	//마지막 변경시간
	@LastModifiedDate
	private LocalDateTime modifiedAt;
	
}
