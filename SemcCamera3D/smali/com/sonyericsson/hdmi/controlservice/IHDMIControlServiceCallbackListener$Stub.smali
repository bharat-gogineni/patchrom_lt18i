.class public abstract Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener$Stub;
.super Landroid/os/Binder;
.source "IHDMIControlServiceCallbackListener.java"

# interfaces
.implements Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sonyericsson.hdmi.controlservice.IHDMIControlServiceCallbackListener"

.field static final TRANSACTION_onCECNotSupported:I = 0x3

.field static final TRANSACTION_onHdmiDisconnected:I = 0x2

.field static final TRANSACTION_onHdmiTurnOnComplete:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.sonyericsson.hdmi.controlservice.IHDMIControlServiceCallbackListener"

    invoke-virtual {p0, p0, v0}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.sonyericsson.hdmi.controlservice.IHDMIControlServiceCallbackListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v1, "com.sonyericsson.hdmi.controlservice.IHDMIControlServiceCallbackListener"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v1, "com.sonyericsson.hdmi.controlservice.IHDMIControlServiceCallbackListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener$Stub;->onHdmiTurnOnComplete()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    :sswitch_2
    const-string v1, "com.sonyericsson.hdmi.controlservice.IHDMIControlServiceCallbackListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener$Stub;->onHdmiDisconnected()V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 64
    :sswitch_3
    const-string v1, "com.sonyericsson.hdmi.controlservice.IHDMIControlServiceCallbackListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener$Stub;->onCECNotSupported()V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
