.class Lcom/android/wsuinterface/IWsuService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWsuService.java"

# interfaces
.implements Lcom/android/wsuinterface/IWsuService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wsuinterface/IWsuService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/android/wsuinterface/IWsuService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/wsuinterface/IWsuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/wsuinterface/IWsuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getNetworkGroupSubscriptions(Lcom/android/wsuinterface/IGetNetworkGroupSubscriptionsCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wsuinterface.IWsuService"

    .line 117
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 118
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 119
    iget-object p0, p0, Lcom/android/wsuinterface/IWsuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 121
    invoke-static {}, Lcom/android/wsuinterface/IWsuService$Stub;->getDefaultImpl()Lcom/android/wsuinterface/IWsuService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 122
    invoke-static {}, Lcom/android/wsuinterface/IWsuService$Stub;->getDefaultImpl()Lcom/android/wsuinterface/IWsuService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wsuinterface/IWsuService;->getNetworkGroupSubscriptions(Lcom/android/wsuinterface/IGetNetworkGroupSubscriptionsCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 129
    throw p0
.end method

.method public registerSubscriptionProvisionStatusListener(Lcom/android/wsuinterface/ISubscriptionProvisionStatusListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wsuinterface.IWsuService"

    .line 135
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 136
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 137
    iget-object p0, p0, Lcom/android/wsuinterface/IWsuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 139
    invoke-static {}, Lcom/android/wsuinterface/IWsuService$Stub;->getDefaultImpl()Lcom/android/wsuinterface/IWsuService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 140
    invoke-static {}, Lcom/android/wsuinterface/IWsuService$Stub;->getDefaultImpl()Lcom/android/wsuinterface/IWsuService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wsuinterface/IWsuService;->registerSubscriptionProvisionStatusListener(Lcom/android/wsuinterface/ISubscriptionProvisionStatusListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 147
    throw p0
.end method

.method public unregisterSubscriptionProvisionStatusListener(Lcom/android/wsuinterface/ISubscriptionProvisionStatusListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wsuinterface.IWsuService"

    .line 153
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 154
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 155
    iget-object p0, p0, Lcom/android/wsuinterface/IWsuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 157
    invoke-static {}, Lcom/android/wsuinterface/IWsuService$Stub;->getDefaultImpl()Lcom/android/wsuinterface/IWsuService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 158
    invoke-static {}, Lcom/android/wsuinterface/IWsuService$Stub;->getDefaultImpl()Lcom/android/wsuinterface/IWsuService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wsuinterface/IWsuService;->unregisterSubscriptionProvisionStatusListener(Lcom/android/wsuinterface/ISubscriptionProvisionStatusListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 165
    throw p0
.end method
