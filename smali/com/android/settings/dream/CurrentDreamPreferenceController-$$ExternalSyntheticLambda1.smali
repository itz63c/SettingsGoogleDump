.class public final synthetic Lcom/android/settings/dream/CurrentDreamPreferenceController-$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/dream/CurrentDreamPreferenceController-$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/dream/CurrentDreamPreferenceController-$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/dream/CurrentDreamPreferenceController-$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/settings/dream/CurrentDreamPreferenceController-$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/settings/dream/CurrentDreamPreferenceController-$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    invoke-static {p1}, Lcom/android/settings/dream/CurrentDreamPreferenceController;->$r8$lambda$_wvt8WzQhsMBazbwdIVxdQB0V68(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Z

    move-result p0

    return p0
.end method
