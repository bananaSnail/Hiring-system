package com.smsm.pojo;

public class Recruitment {
    private String jobId;

    private String companyId;

    private String jobName;

    private Integer jobSalary;

    private String exceptionEducation;

    public String getJobId() {
        return jobId;
    }

    public void setJobId(String jobId) {
        this.jobId = jobId == null ? null : jobId.trim();
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId == null ? null : companyId.trim();
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName == null ? null : jobName.trim();
    }

    public Integer getJobSalary() {
        return jobSalary;
    }

    public void setJobSalary(Integer jobSalary) {
        this.jobSalary = jobSalary;
    }

    public String getExceptionEducation() {
        return exceptionEducation;
    }

    public void setExceptionEducation(String exceptionEducation) {
        this.exceptionEducation = exceptionEducation == null ? null : exceptionEducation.trim();
    }
}