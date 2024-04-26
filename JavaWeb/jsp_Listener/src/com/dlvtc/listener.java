package com.dlvtc;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class listener implements HttpSessionListener {
    private static int onlineCount = 0;

    @Override
    public void sessionCreated(HttpSessionEvent httpSessionEvent) {
        onlineCount++;
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
        onlineCount--;
    }

    public static int getOnlineCount() {
        return onlineCount;
    }
}
