.class public final synthetic Lcom/android/settings/biometrics/BiometricEnrollIntroduction-$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/BiometricEnrollIntroduction;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/BiometricEnrollIntroduction;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction-$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/BiometricEnrollIntroduction;

    iput-object p2, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction-$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onChallengeGenerated(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction-$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/BiometricEnrollIntroduction;

    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction-$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->$r8$lambda$7_i8l6LQSE_ck3YrOQV5i-2sLUY(Lcom/android/settings/biometrics/BiometricEnrollIntroduction;Landroid/content/Intent;IJ)V

    return-void
.end method
