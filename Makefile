LINUX_SERVER_NAME=iagent

LINUX_SERVER_PATH = $(PWD)/linux_log_agent 
LOG_FILE= /var/log/auth.log /var/log/kern.log

.PHONY: ls

ls:
	cd $(LINUX_SERVER_PATH) && cmake -B build $(LINUX_SERVER_PATH)
# 	cmake --build build
# 	$(LINUX_SERVER_PATH)/build/srcs/$(LINUX_SERVER_NAME)  $(LOG_FILE)
