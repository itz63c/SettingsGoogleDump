.class public final synthetic Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter-$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;

.field public final synthetic f$1:Lcom/android/settings/intelligence/LogProto$SettingsLog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;Lcom/android/settings/intelligence/LogProto$SettingsLog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter-$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;

    iput-object p2, p0, Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter-$$ExternalSyntheticLambda1;->f$1:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter-$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;

    iget-object p0, p0, Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter-$$ExternalSyntheticLambda1;->f$1:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p0}, Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;->$r8$lambda$kD4tYJNJQCSoW9RN9Z1vbwTCquE(Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;Lcom/android/settings/intelligence/LogProto$SettingsLog;)V

    return-void
.end method
