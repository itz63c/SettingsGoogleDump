.class Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4$1;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "FaceEnrollPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->onOpened(Landroid/hardware/camera2/CameraDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;


# direct methods
.method constructor <init>(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4$1;->this$1:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    const-string p0, "FaceEnroll/PreviewFragment"

    const-string p1, "Unable to configure camera"

    .line 207
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4$1;->this$1:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;

    iget-object v0, v0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$800(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4$1;->this$1:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;

    iget-object v0, v0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {v0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$1202(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 193
    :try_start_0
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4$1;->this$1:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;

    iget-object p1, p1, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$1100(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x4

    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 193
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 197
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4$1;->this$1:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;

    iget-object p1, p1, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$1100(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$1302(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    .line 198
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4$1;->this$1:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;

    iget-object p1, p1, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$1200(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4$1;->this$1:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;

    iget-object v0, v0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$1300(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4$1;->this$1:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;

    iget-object v1, v1, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    .line 199
    invoke-static {v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$1400(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4$1;->this$1:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$200(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/os/Handler;

    move-result-object p0

    .line 198
    invoke-virtual {p1, v0, v1, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "FaceEnroll/PreviewFragment"

    const-string v0, "Unable to access camera"

    .line 201
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
