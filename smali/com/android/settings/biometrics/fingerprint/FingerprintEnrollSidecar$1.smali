.class Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;
.super Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
.source "FingerprintEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-static {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->access$201(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-static {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->access$101(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onEnrollmentProgress(I)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->access$001(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;I)V

    return-void
.end method
