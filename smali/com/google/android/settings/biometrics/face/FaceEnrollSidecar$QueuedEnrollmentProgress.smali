.class Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$QueuedEnrollmentProgress;
.super Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$QueuedEvent;
.source "FaceEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueuedEnrollmentProgress"
.end annotation


# instance fields
.field enrollmentSteps:I

.field remaining:I

.field final synthetic this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;


# direct methods
.method public constructor <init>(Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;II)V
    .locals 1

    .line 100
    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$QueuedEnrollmentProgress;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$QueuedEvent;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$1;)V

    .line 101
    iput p2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$QueuedEnrollmentProgress;->enrollmentSteps:I

    .line 102
    iput p3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$QueuedEnrollmentProgress;->remaining:I

    return-void
.end method


# virtual methods
.method public send(Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;)V
    .locals 1

    .line 107
    iget v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$QueuedEnrollmentProgress;->enrollmentSteps:I

    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$QueuedEnrollmentProgress;->remaining:I

    invoke-interface {p1, v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;->onEnrollmentProgressChange(II)V

    return-void
.end method