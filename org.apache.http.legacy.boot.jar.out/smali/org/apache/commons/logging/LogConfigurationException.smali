.class public Lorg/apache/commons/logging/LogConfigurationException;
.super Ljava/lang/RuntimeException;
.source "LogConfigurationException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/logging/LogConfigurationException;->cause:Ljava/lang/Throwable;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/logging/LogConfigurationException;->cause:Ljava/lang/Throwable;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (Caused by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/logging/LogConfigurationException;->cause:Ljava/lang/Throwable;

    .line 81
    iput-object p2, p0, Lorg/apache/commons/logging/LogConfigurationException;->cause:Ljava/lang/Throwable;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 67
    if-nez p1, :cond_0

    :goto_0
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void

    .line 67
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/commons/logging/LogConfigurationException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method