.class public final synthetic Lcom/google/android/settings/accessibility/-$$Lambda$HapticsSwitchPreferenceController$FCnr_PrpO0RXkQbVAphic5SaJf0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/settings/accessibility/-$$Lambda$HapticsSwitchPreferenceController$FCnr_PrpO0RXkQbVAphic5SaJf0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/settings/accessibility/-$$Lambda$HapticsSwitchPreferenceController$FCnr_PrpO0RXkQbVAphic5SaJf0;

    invoke-direct {v0}, Lcom/google/android/settings/accessibility/-$$Lambda$HapticsSwitchPreferenceController$FCnr_PrpO0RXkQbVAphic5SaJf0;-><init>()V

    sput-object v0, Lcom/google/android/settings/accessibility/-$$Lambda$HapticsSwitchPreferenceController$FCnr_PrpO0RXkQbVAphic5SaJf0;->INSTANCE:Lcom/google/android/settings/accessibility/-$$Lambda$HapticsSwitchPreferenceController$FCnr_PrpO0RXkQbVAphic5SaJf0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->lambda$displayPreference$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
