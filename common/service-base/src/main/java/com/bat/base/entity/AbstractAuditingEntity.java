package com.bat.base.entity;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.time.Instant;


@Getter
@Setter
@ToString
@Accessors(chain = true)
public class AbstractAuditingEntity implements Serializable {

    private static final long serialVersionUID = 3904350846520160443L;

    private Long id;

    private String createdBy;

    private Instant createdTime;

    private String updatedBy;

    private Instant updatedTime;

    private Boolean deleted;


}
