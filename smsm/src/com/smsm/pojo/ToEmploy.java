package com.smsm.pojo;

public class ToEmploy {
    private String jobSeekerId;

    private String resumeId;

    private String jobId;

    private String jobSeekerName;

    private String companyName;

    private Integer exceptionSalary;

    public String getJobSeekerId() {
        return jobSeekerId;
    }

    public void setJobSeekerId(String jobSeekerId) {
        this.jobSeekerId = jobSeekerId == null ? null : jobSeekerId.trim();
    }

    public String getResumeId() {
        return resumeId;
    }

    public void setResumeId(String resumeId) {
        this.resumeId = resumeId == null ? null : resumeId.trim();
    }

    public String getJobId() {
        return jobId;
    }

    public void setJobId(String jobId) {
        this.jobId = jobId == null ? null : jobId.trim();
    }

    public String getJobSeekerName() {
        return jobSeekerName;
    }

    public void setJobSeekerName(String jobSeekerName) {
        this.jobSeekerName = jobSeekerName == null ? null : jobSeekerName.trim();
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName == null ? null : companyName.trim();
    }

    public Integer getExceptionSalary() {
        return exceptionSalary;
    }

    public void setExceptionSalary(Integer exceptionSalary) {
        this.exceptionSalary = exceptionSalary;
    }
}