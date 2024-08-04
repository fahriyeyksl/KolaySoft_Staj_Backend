package com.example.fatura.core.ultitieds.result;

public class Result {

    private boolean result;
    private String message;

    public Result(boolean result){
        this.result = result;
    }

    public Result(boolean result, String message) {
        this(result);
        this.message = message;
    }

    //getter methodu tanımlıyoruz. Dış dünyaya açıyoruz
    public boolean isResult() {
        return this.result;
    }

    public String getMessage() {

        return this.message;

    }

}
