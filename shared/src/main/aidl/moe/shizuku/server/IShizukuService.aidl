package moe.shizuku.server;

import moe.shizuku.server.IRemoteProcess;

interface IShizukuService {

    void exit() = 100;

    int getVersion() = 2;

    int getUid() = 3;

    int checkPermission(String permission) = 4;

    IRemoteProcess newProcess(in String[] cmd, in String[] env, in String dir) = 7;

    String getSELinuxContext() = 8;

    String getSystemProperty(in String name, in String defaultValue) = 9;

    void setSystemProperty(in String name, in String value) = 10;

    IBinder requestUserService(in Bundle options) = 11;

}