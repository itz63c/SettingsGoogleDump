.class public final synthetic Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment-$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/Intent;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;ILandroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment-$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iput p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment-$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment-$$ExternalSyntheticLambda0;->f$2:Landroid/content/Intent;

    iput p4, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment-$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final onVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment-$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment-$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment-$$ExternalSyntheticLambda0;->f$2:Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment-$$ExternalSyntheticLambda0;->f$3:I

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->$r8$lambda$UN8YESMD_X2yVu5YPbIBQoF3Eb4(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;ILandroid/content/Intent;ILcom/android/internal/widget/VerifyCredentialResponse;I)V

    return-void
.end method
