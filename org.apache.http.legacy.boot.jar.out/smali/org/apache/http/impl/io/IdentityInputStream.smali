.class public Lorg/apache/http/impl/io/IdentityInputStream;
.super Ljava/io/InputStream;
.source "IdentityInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private closed:Z

.field private final in:Lorg/apache/http/io/SessionInputBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/http/io/SessionInputBuffer;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->closed:Z

    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/io/IdentityInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    .line 59
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionInputBuffer;->isDataAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    return v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->closed:Z

    .line 75
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, -0x1

    return v0

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-boolean v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, -0x1

    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/io/SessionInputBuffer;->read([BII)I

    move-result v0

    return v0
.end method
