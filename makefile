PREFIX = ${HOME}/.local
NAME = mmbar
BAR_HOME = ${DESTDIR}${PREFIX}/${NAME}

all:
	@>&2 echo "Use 'make install'."

install:
	install -Dm0755 ${NAME}        ${DESTDIR}${PREFIX}/bin/${NAME}
	install -Dm0755 ${NAME}.config ${BAR_HOME}/${NAME}.config
	mkdir -p ${BAR_HOME}/modules ${BAR_HOME}/utils
	install -m0755 modules/${NAME}.* ${BAR_HOME}/modules/
	install -m0755 utils/* ${BAR_HOME}/utils/

uninstall:
	rm ${DESTDIR}${PREFIX}/bin/${NAME}
	rm -r -- ${BAR_HOME}

clean:
	@>&2 echo 'Nothing to clean.'

test:
	shellcheck -x -s sh ${NAME}
	shellcheck -x -s sh ${NAME}.config
