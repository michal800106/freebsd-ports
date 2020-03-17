# $FreeBSD$

PORTNAME=	Slic3r
CATEGORIES=	cad

MAINTAINER=	zielonka.michal@gmail.com
COMMENT=	Slicing application for 3D printers

LICENSE=	AGPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

LIB_DEPENDS=	libwx_gtk3u_core-3.0.so:x11-toolkits/wxgtk30 \
	libboost_system.so:devel/boost-libs \
	libboost_thread.so:devel/boost-libs \
	libboost_filesystem.so:devel/boost-libs

RUN_DEPENDS=	p5-Alien-wxWidgets>=0.69:x11-toolkits/p5-Alien-wxWidgets \
		boost-libs>=1.64:devel/boost-libs \
		wx30-gtk3>=3.0:x11-toolkits/wxgtk30 \
		p5-Moo>=2.003004:devel/p5-Moo \
		p5-Wx>=p5-Wx-0.9932:x11-toolkits/p5-Wx \
		p5-ExtUtils-Typemaps-Default>=1.05:devel/p5-ExtUtils-Typemaps-Default \
		p5-Encode-Locale>=1.05:converters/p5-Encode-Locale \
		p5-Class-Accessor>=0.51:devel/p5-Class-Accessor \
		p5-OpenGL>=0.66:graphics/p5-OpenGL \
		p5-Wx-GLCanvas>=0.09:x11-toolkits/p5-Wx-GLCanvas

BUILD_DEPENDS=	p5-Alien-wxWidgets>=0.69:x11-toolkits/p5-Alien-wxWidgets \
		boost-libs>=1.64:devel/boost-libs \
		wx30-gtk3>=3.0:x11-toolkits/wxgtk30 \
		p5-Moo>=2.003004:devel/p5-Moo \
		p5-Wx>=p5-Wx-0.9932:x11-toolkits/p5-Wx \
		p5-Devel-CheckLib>=1.13:devel/p5-Devel-CheckLib \
		p5-ExtUtils-CppGuess>=0.20:devel/p5-ExtUtils-CppGuess \
		p5-Module-Build>=0.4229:devel/p5-Module-Build \
                p5-Module-Build-WithXSpp>=0.14:devel/p5-Module-Build-WithXSpp \
		p5-ExtUtils-Typemaps-Default>=1.05:devel/p5-ExtUtils-Typemaps-Default \
		p5-Encode-Locale>=1.05:devel/p5-Encode-Locale

USES=		gettext perl5 compiler:c++11-lang gl xorg

CC=	${CXX}
CONFIGURE_ENV+= SLIC3R_NO_AUTO=1
CONFIGURE_ENV+= WX_CONFIG=${LOCALBASE}/bin/wxgtk3u-3.0-config
CONFIGURE_WRKSRC=	${WRKSRC}/xs
BUILD_WRKSRC=	${WRKSRC}/xs
INSTALL_WRKSRC=	${WRKSRC}/xs

USE_PERL5=	modbuild
USE_GITHUB=	yes
USE_GL=		glew
GH_TAGNAME=	54a31eed204863c49dfaa3b6fe4809f6d10a94ba
GH_ACCOUNT=	slic3r

post-install:
	cd ${WRKSRC} && \
		${FIND} var -type d -exec ${INSTALL_DATA} -d {} "${STAGEDIR}/${PREFIX}/${PORTNAME}/{}" \; && \
		${FIND} var -type f -exec ${INSTALL_DATA} {} "${STAGEDIR}/${PREFIX}/${PORTNAME}/{}" \;
	cd ${WRKSRC} && \
		${FIND} lib -type d -exec ${INSTALL_DATA} -d {} "${STAGEDIR}/${PREFIX}/${PORTNAME}/{}" \; && \
		${FIND} lib -type f -exec ${INSTALL_DATA} {} "${STAGEDIR}/${PREFIX}/${PORTNAME}/{}" \;
	cd ${WRKSRC} && \
		${FIND} utils -type d -exec ${INSTALL_DATA} -d {} "${STAGEDIR}/${PREFIX}/${PORTNAME}/{}" \; && \
		${FIND} utils -type f \! -name '*.orig' -exec ${INSTALL_DATA} {} "${STAGEDIR}/${PREFIX}/${PORTNAME}/{}" \;
	cd ${WRKSRC} && \
		${FIND} translation -type d -exec ${INSTALL_DATA} -d {} "${STAGEDIR}/${PREFIX}/${PORTNAME}/{}" \; && \
		${FIND} translation -type f -exec ${INSTALL_DATA} {} "${STAGEDIR}/${PREFIX}/${PORTNAME}/{}" \;
	cd ${WRKSRC} && \
		${INSTALL_DATA} -d "${STAGEDIR}/${PREFIX}/bin" && \
		${INSTALL_SCRIPT} slic3r.pl "${STAGEDIR}/${PREFIX}/${PORTNAME}/" && \
		${LN} -sf "${PREFIX}/${PORTNAME}/slic3r.pl" "${STAGEDIR}/${PREFIX}/bin/slic3r.pl"

.include <bsd.port.mk>
