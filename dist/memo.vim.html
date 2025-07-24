<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>memo.vim</title>
    <!-- Tailwind CSSのCDNを読み込み -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Font AwesomeのCDNを読み込み -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- marked.js (Markdownパーサー) -->
    <script src="https://cdn.jsdelivr.net/npm/marked/marked.min.js"></script>
    <!-- DOMPurify (HTMLサニタイザー) -->
    <script src="https://cdn.jsdelivr.net/npm/dompurify@2.4.0/dist/purify.min.js"></script>
    <style>
        /* スクロールバーのスタイル */
        .custom-scrollbar::-webkit-scrollbar { width: 8px; }
        .custom-scrollbar::-webkit-scrollbar-track { background: #1e1e1e; }
        .custom-scrollbar::-webkit-scrollbar-thumb { background: #4a4a4a; border-radius: 4px; }
        .message-container::-webkit-scrollbar { width: 10px; }
        .message-container::-webkit-scrollbar-track { background: #2c2c2c; }
        .message-container::-webkit-scrollbar-thumb { background: #555; border-radius: 5px; }
        .message-container::-webkit-scrollbar-thumb:hover { background: #666; }
        /* ホバー時にボタンを表示 */
        .memo-item:hover .memo-actions { display: flex; }
        /* Markdownで生成されたHTMLのスタイル */
        .message-body p { margin: 0; }
        .message-body h1, .message-body h2, .message-body h3 { font-weight: bold; margin-top: 0.5em; margin-bottom: 0.5em; }
        .message-body ul { list-style-type: disc; margin-left: 1.5em; }
        .message-body ol { list-style-type: decimal; margin-left: 1.5em; }
        .message-body a { color: #60a5fa; text-decoration: underline; }
        .message-body pre { background-color: #1e1e1e; padding: 1em; border-radius: 0.5em; margin-top: 0.5em; margin-bottom: 0.5em; overflow-x: auto;}
        .message-body code { background-color: #3a3a3a; padding: 0.2em 0.4em; margin: 0; font-size: 85%; border-radius: 3px; }
        .message-body pre code { background-color: transparent; padding: 0; margin: 0; font-size: inherit; border-radius: 0; }
        /* 選択中のメッセージのスタイル */
        .message-item.selected { background-color: #3a3a3a; border: 1px solid #555; border-radius: 8px; }
    </style>
</head>
<body class="bg-[#2c2c2c] font-sans">

    <div class="flex h-screen text-gray-200">
        <!-- サイドバー -->
        <div class="w-64 flex-shrink-0 bg-[#1e1e1e] text-gray-300 flex flex-col">
            <div class="h-12 px-4 font-bold text-white flex items-center border-b border-zinc-700">
                memo.vim
            </div>
            <div class="flex-1 p-2 custom-scrollbar overflow-y-auto">
                <div class="flex items-center justify-between px-2 mb-2">
                    <h2 class="text-sm font-semibold text-gray-400">Memo</h2>
                    <button id="add-memo-btn" class="text-gray-400 hover:text-white">
                        <i class="fas fa-plus"></i>
                    </button>
                </div>
                <ul id="memo-list">
                    <!-- メモリストはJSで動的に生成 -->
                </ul>
            </div>
            <div class="h-14 p-2 flex items-center border-t border-zinc-700">
                <div class="flex items-center">
                    <div class="w-8 h-8 rounded-full bg-indigo-500 flex items-center justify-center text-white font-bold">U</div>
                    <span class="ml-2 font-semibold text-white">User</span>
                </div>
            </div>
        </div>

        <!-- メインコンテンツ -->
        <div class="flex-1 flex flex-col bg-[#2c2c2c]">
            <!-- ヘッダー -->
            <header class="h-12 flex items-center px-6 border-b border-zinc-700">
                <div class="flex items-center">
                    <i class="fas fa-hashtag text-gray-400"></i>
                    <h1 id="memo-title" class="ml-2 font-semibold text-lg text-gray-100"></h1>
                </div>
            </header>

            <!-- メッセージ表示エリア -->
            <main id="message-container" class="flex-1 p-6 overflow-y-auto message-container">
                <!-- メッセージはJSで動的に生成 -->
            </main>

            <!-- 入力エリア -->
            <footer id="footer-input-area" class="p-4 pb-6">
                <div id="memo-input-container" class="bg-zinc-800 p-1 rounded-lg border-2 border-transparent">
                     <textarea id="memo-input"
                          class="w-full p-3 bg-transparent text-gray-200 placeholder-gray-500 rounded-lg focus:outline-none resize-none"
                          rows="3"
                          placeholder=""></textarea>
                </div>
                <div class="text-xs text-gray-400 mt-1 text-right">
                    <b>Cmd + Enter</b> で送信
                </div>
            </footer>
        </div>
    </div>

    <!-- コマンドバー -->
    <div id="command-bar" class="fixed bottom-0 left-0 right-0 h-8 bg-zinc-900 text-white items-center px-4 hidden font-mono">
        <span class="text-lg">:</span>
        <input type="text" id="command-input" class="bg-transparent w-full ml-2 focus:outline-none">
    </div>

    <!-- モーダル -->
    <div id="memo-modal" class="fixed inset-0 bg-black bg-opacity-60 items-center justify-center hidden">
        <div class="bg-zinc-800 rounded-lg shadow-xl p-6 w-full max-w-sm">
            <h3 id="modal-title" class="text-lg font-bold text-gray-100 mb-4"></h3>
            <input type="text" id="modal-input" class="w-full bg-zinc-700 border border-zinc-600 text-gray-200 rounded p-2 mb-4" placeholder="メモのタイトル">
            <div class="flex justify-end space-x-2">
                <button id="modal-cancel-btn" class="px-4 py-2 bg-zinc-600 text-gray-200 rounded hover:bg-zinc-500">キャンセル</button>
                <button id="modal-ok-btn" class="px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600">OK</button>
            </div>
        </div>
    </div>

    <!-- 削除確認モーダル -->
    <div id="delete-confirm-modal" class="fixed inset-0 bg-black bg-opacity-60 items-center justify-center hidden">
        <div class="bg-zinc-800 rounded-lg shadow-xl p-6 w-full max-w-sm">
            <h3 class="text-lg font-bold text-gray-100 mb-2">本当に削除しますか？</h3>
            <p id="delete-confirm-text" class="text-gray-400 mb-4"></p>
            <div class="flex justify-end space-x-2">
                <button id="delete-cancel-btn" class="px-4 py-2 bg-zinc-600 text-gray-200 rounded hover:bg-zinc-500">キャンセル</button>
                <button id="delete-ok-btn" class="px-4 py-2 bg-red-500 text-white rounded hover:bg-red-600">削除</button>
            </div>
        </div>
    </div>


    <script>
    document.addEventListener('DOMContentLoaded', () => {
        // --- DOM要素の取得 ---
        const memoList = document.getElementById('memo-list');
        const messageContainer = document.getElementById('message-container');
        const memoInput = document.getElementById('memo-input');
        const memoInputContainer = document.getElementById('memo-input-container');
        const memoTitle = document.getElementById('memo-title');
        const addMemoBtn = document.getElementById('add-memo-btn');
        const footerInputArea = document.getElementById('footer-input-area');
        const commandBar = document.getElementById('command-bar');
        const commandInput = document.getElementById('command-input');

        // モーダル関連の要素
        const memoModal = document.getElementById('memo-modal');
        const modalTitleEl = document.getElementById('modal-title');
        const modalInput = document.getElementById('modal-input');
        const modalCancelBtn = document.getElementById('modal-cancel-btn');
        const modalOkBtn = document.getElementById('modal-ok-btn');

        const deleteConfirmModal = document.getElementById('delete-confirm-modal');
        const deleteConfirmText = document.getElementById('delete-confirm-text');
        const deleteCancelBtn = document.getElementById('delete-cancel-btn');
        const deleteOkBtn = document.getElementById('delete-ok-btn');

        // --- 状態管理 ---
        const STORAGE_KEY = 'slackMemoApp_data';
        let data = { memos: [], messages: {} };
        let activeMemoId = null;
        let mode = 'normal'; // 'normal', 'insert', 'command', 'edit-message'
        let selectedMessageId = null;
        let selectedItemIndex = -1; // -1: none, 0-n: message, messages.length: input
        let editingMessageId = null;
        let jj_last_press = 0;
        let gg_last_press = 0;
        let completionState = { baseCommand: '', originalPartial: '', matches: [], index: -1 };

        // --- ヘルパー関数 ---
        const formatDate = (timestamp) => {
            if (!timestamp) return '';
            const date = new Date(timestamp);
            const year = date.getFullYear();
            const month = String(date.getMonth() + 1).padStart(2, '0');
            const day = String(date.getDate()).padStart(2, '0');
            const hours = String(date.getHours()).padStart(2, '0');
            const minutes = String(date.getMinutes()).padStart(2, '0');
            const seconds = String(date.getSeconds()).padStart(2, '0');
            return `${year}-${month}-${day}T${hours}:${minutes}:${seconds}`;
        };

        // --- データ操作関数 ---
        const loadData = () => {
            const savedData = localStorage.getItem(STORAGE_KEY);
            if (savedData) {
                try {
                    data = JSON.parse(savedData);
                    if (!data.memos || !data.messages) {
                        initializeDefaultData();
                    }
                } catch(e) {
                    console.error("データの読み込みに失敗しました:", e);
                    initializeDefaultData();
                }
            } else {
                initializeDefaultData();
            }
            activeMemoId = data.memos.length > 0 ? data.memos[0].id : null;
        };

        const initializeDefaultData = () => {
            const now = Date.now();
            data = {
                memos: [{ id: now, name: 'general-memo', createdAt: now }],
                messages: { [now]: [] }
            };
            saveData();
        };

        const saveData = () => {
            localStorage.setItem(STORAGE_KEY, JSON.stringify(data));
        };

        // --- レンダリング関数 ---
        const render = () => {
            renderSidebar();
            renderMainContent();
        };

        const renderSidebar = () => {
            memoList.innerHTML = '';
            data.memos.forEach(memo => {
                const li = document.createElement('li');
                li.className = `memo-item flex items-center justify-between px-2 py-1 rounded cursor-pointer hover:bg-zinc-700 ${memo.id === activeMemoId ? 'bg-zinc-700 text-white' : ''}`;
                li.dataset.memoId = memo.id;
                li.innerHTML = `
                    <div class="flex items-center overflow-hidden">
                        <i class="fas fa-hashtag w-5 text-center text-gray-400"></i>
                        <span class="ml-2 truncate">${escapeHTML(memo.name)}</span>
                    </div>
                    <div class="memo-actions hidden space-x-2 text-gray-400">
                        <button class="rename-btn hover:text-white"><i class="fas fa-pen"></i></button>
                        <button class="delete-btn hover:text-white"><i class="fas fa-trash-alt"></i></button>
                    </div>
                `;
                memoList.appendChild(li);
            });
        };

        const renderMainContent = () => {
            if (activeMemoId && data.memos.length > 0) {
                footerInputArea.style.display = 'block';
                const activeMemo = data.memos.find(m => m.id === activeMemoId);
                const formattedDate = formatDate(activeMemo.createdAt);
                memoTitle.textContent = `${activeMemo.name} - ${formattedDate}`;
                memoInput.placeholder = `#${activeMemo.name} にメモする (iで入力開始)`;
                renderMessages();
            } else {
                memoTitle.textContent = 'メモがありません';
                messageContainer.innerHTML = `
                    <div class="text-center text-gray-500 mt-10">
                        <p class="text-lg">メモがありません。</p>
                        <p>コマンド「:e {メモ名}」で新しいメモを作成してください。</p>
                    </div>`;
                footerInputArea.style.display = 'none';
            }
        };

        const renderMessages = () => {
            messageContainer.innerHTML = '';
            const messages = data.messages[activeMemoId] || [];
            if (messages.length === 0) {
                messageContainer.innerHTML = `
                    <div class="text-center text-gray-500 mt-10">
                        <p class="text-lg">まだメッセージがありません。</p>
                        <p>下の入力欄から最初のメッセージを投稿してみましょう！</p>
                    </div>`;
                return;
            }
            messages.forEach(msg => {
                const isSelected = msg.id === selectedMessageId;
                const isEditing = msg.id === editingMessageId;

                const msgElement = document.createElement('div');
                msgElement.dataset.messageId = msg.id;
                msgElement.classList.add('flex', 'items-start', 'mb-2', 'p-2', 'message-item');
                if (isSelected) {
                    msgElement.classList.add('selected');
                }

                const unsafeHTML = marked.parse(msg.text);
                const safeHTML = DOMPurify.sanitize(unsafeHTML);

                if (isEditing) {
                    msgElement.innerHTML = `
                        <div class="w-10 h-10 rounded-full bg-indigo-500 flex-shrink-0 flex items-center justify-center text-white font-bold mr-4">U</div>
                        <div class="flex-grow">
                            <textarea id="edit-input-${msg.id}" data-message-id="${msg.id}" class="w-full p-2 bg-zinc-700 text-gray-200 rounded-lg focus:outline-none resize-y" rows="4">${msg.text}</textarea>
                        </div>
                    `;
                } else {
                    msgElement.innerHTML = `
                        <div class="w-10 h-10 rounded-full bg-indigo-500 flex-shrink-0 flex items-center justify-center text-white font-bold mr-4">U</div>
                        <div class="flex-grow">
                            <div class="flex items-baseline">
                                <span class="font-bold text-gray-100 mr-2">User</span>
                                <span class="text-xs text-gray-500">${msg.timestamp}</span>
                            </div>
                            <div class="message-body text-gray-300">${safeHTML}</div>
                        </div>
                    `;
                }
                messageContainer.appendChild(msgElement);
            });

            if (editingMessageId) {
                const editInput = document.getElementById(`edit-input-${editingMessageId}`);
                if (editInput) {
                    editInput.style.height = 'auto';
                    editInput.style.height = (editInput.scrollHeight) + 'px';
                    editInput.focus();
                    editInput.selectionStart = editInput.selectionEnd = editInput.value.length;
                }
            }
        };

        // --- モード管理 ---
        const enterNormalMode = () => {
            mode = 'normal';
            editingMessageId = null;
            commandInput.value = '';
            memoInput.blur();
            commandBar.style.display = 'none';
            commandInput.blur();
            completionState = { baseCommand: '', originalPartial: '', matches: [], index: -1 };
        };

        const enterInsertMode = () => {
            mode = 'insert';
            selectedMessageId = null;
            selectedItemIndex = -1;
            updateSelectionUI();
            memoInput.focus();
        };

        const enterEditMessageMode = () => {
            if (!selectedMessageId) return;
            mode = 'edit-message';
            editingMessageId = selectedMessageId;
            renderMessages();
        };

        const enterCommandMode = () => {
            mode = 'command';
            commandBar.style.display = 'flex';
            commandInput.focus();
        };

        const updateSelectionUI = () => {
            const messages = data.messages[activeMemoId] || [];
            const messageElements = messageContainer.querySelectorAll('.message-item');

            // Clear all selections
            messageElements.forEach(el => el.classList.remove('selected'));
            memoInputContainer.classList.remove('border-blue-500');
            selectedMessageId = null;

            if (selectedItemIndex >= 0 && selectedItemIndex < messages.length) {
                // Select a message
                selectedMessageId = messages[selectedItemIndex].id;
                const selectedEl = messageContainer.querySelector(`[data-message-id='${selectedMessageId}']`);
                if (selectedEl) {
                    selectedEl.classList.add('selected');
                    selectedEl.scrollIntoView({ block: 'nearest' });
                }
            } else if (selectedItemIndex === messages.length) {
                // Select the input area
                memoInputContainer.classList.add('border-blue-500');
                memoInput.scrollIntoView({ block: 'nearest' });
            }
        };

        // --- モーダル処理 ---
        const openModal = (type, memoId = null) => {
            if (type === 'add') {
                modalTitleEl.textContent = '新しいメモを作成';
                modalInput.value = '';
                modalOkBtn.onclick = () => createNewMemoFromModal();
            } else if (type === 'rename' && memoId) {
                const memo = data.memos.find(m => m.id === memoId);
                modalTitleEl.textContent = 'メモ名を変更';
                modalInput.value = memo.name;
                modalOkBtn.onclick = () => renameMemo(memoId);
            }
            memoModal.style.display = 'flex';
            modalInput.focus();
        };

        const closeModal = () => {
            memoModal.style.display = 'none';
            deleteConfirmModal.style.display = 'none';
            enterNormalMode();
        };

        // --- CRUD操作 ---
        const createNewMemoFromModal = () => {
            const name = modalInput.value.trim();
            if (name) handleEditCommand(name);
            closeModal();
        };

        const handleEditCommand = (memoName) => {
            if (!memoName) return;
            const existingMemo = data.memos.find(m => m.name === memoName);
            if (existingMemo) {
                activeMemoId = existingMemo.id;
            } else {
                const now = Date.now();
                data.memos.push({ id: now, name: memoName, createdAt: now });
                data.messages[now] = [];
                activeMemoId = now;
            }
            saveData();
            render();
        };

        const renameMemo = (memoId) => {
            const newName = modalInput.value.trim();
            const memo = data.memos.find(m => m.id === memoId);
            if (newName && newName !== memo.name && !data.memos.some(m => m.name === newName)) {
                memo.name = newName;
                saveData();
                render();
                closeModal();
            } else if (!newName) {
                alert('メモ名を入力してください。');
            } else if (newName !== memo.name) {
                alert('同じ名前のメモが既に存在します。');
            } else {
                closeModal();
            }
        };

        const confirmDeleteMemo = (memoId) => {
            const memo = data.memos.find(m => m.id === memoId);
            if (!memo) return;
            deleteConfirmText.textContent = `メモ「${escapeHTML(memo.name)}」を削除します。この操作は取り消せません。`;
            deleteConfirmModal.style.display = 'flex';
            deleteOkBtn.onclick = () => deleteMemo(memoId);
        };

        const deleteMemo = (memoId) => {
            if (!memoId) return;
            const currentIndex = data.memos.findIndex(m => m.id === memoId);
            data.memos = data.memos.filter(m => m.id !== memoId);
            delete data.messages[memoId];
            if (activeMemoId === memoId) {
                if (data.memos.length > 0) {
                    const newIndex = Math.min(currentIndex, data.memos.length - 1);
                    activeMemoId = data.memos[newIndex].id;
                } else {
                    activeMemoId = null;
                }
            }
            saveData();
            render();
            closeModal();
        };

        const addMessage = () => {
            const text = memoInput.value.trim();
            if (text && activeMemoId) {
                const timestamp = new Date().toLocaleString('ja-JP');
                const newMessage = { id: Date.now(), text, timestamp };
                if (!data.messages[activeMemoId]) data.messages[activeMemoId] = [];
                data.messages[activeMemoId].push(newMessage);
                saveData();
                renderMessages();
                memoInput.value = '';
                memoInput.style.height = 'auto';
            }
        };

        const parseAndExecuteCommand = (commandText) => {
            const [command, ...args] = commandText.split(/\s+/);
            const arg = args.join(' ');
            switch(command) {
                case 'e':
                    handleEditCommand(arg);
                    break;
                case 'bd':
                    if (arg) {
                        const memoToDelete = data.memos.find(m => m.name === arg);
                        if (memoToDelete) {
                            deleteMemo(memoToDelete.id);
                        }
                    } else {
                        deleteMemo(activeMemoId);
                    }
                    break;
            }
        };

        // --- イベントリスナー ---
        addMemoBtn.addEventListener('click', () => openModal('add'));

        memoList.addEventListener('click', (e) => {
            const memoItem = e.target.closest('.memo-item');
            if (!memoItem) return;
            const memoId = Number(memoItem.dataset.memoId);
            if (e.target.closest('.rename-btn')) {
                openModal('rename', memoId);
            } else if (e.target.closest('.delete-btn')) {
                confirmDeleteMemo(memoId);
            } else {
                activeMemoId = memoId;
                selectedMessageId = null;
                selectedItemIndex = -1;
                render();
            }
        });

        messageContainer.addEventListener('keydown', e => {
            if (mode === 'edit-message' && e.target.id.startsWith('edit-input-')) {
                const saveChanges = () => {
                    const messageId = Number(e.target.dataset.messageId);
                    const msgIndex = data.messages[activeMemoId].findIndex(m => m.id === messageId);
                    if (msgIndex !== -1) {
                        data.messages[activeMemoId][msgIndex].text = e.target.value;
                        saveData();
                    }
                    enterNormalMode();
                    renderMessages();
                };

                if (e.key === 'Escape') {
                    e.preventDefault();
                    saveChanges();
                } else if (e.key === 'j') {
                    const now = Date.now();
                    if (now - jj_last_press < 300) {
                        e.preventDefault();
                        e.target.value = e.target.value.slice(0, -1); // Remove the extra 'j'
                        saveChanges();
                    }
                    jj_last_press = now;
                } else {
                    jj_last_press = 0;
                }
            }
        });

        memoInput.addEventListener('focus', () => {
            memoInputContainer.classList.add('border-blue-500');
            if (mode !== 'insert') {
                enterInsertMode();
            }
        });
        memoInput.addEventListener('blur', () => {
            if (mode === 'insert') {
                enterNormalMode();
            }
            memoInputContainer.classList.remove('border-blue-500');
        });
        memoInput.addEventListener('keydown', (e) => {
            if (e.key === 'Escape') {
                e.preventDefault();
                memoInput.blur();
                return;
            }
            if (e.key === 'j') {
                const now = Date.now();
                if (now - jj_last_press < 300) {
                    e.preventDefault();
                    e.stopPropagation();
                    memoInput.value = memoInput.value.slice(0, -1);
                    const messages = data.messages[activeMemoId] || [];
                    selectedItemIndex = messages.length;
                    memoInput.blur();
                    updateSelectionUI();
                }
                jj_last_press = now;
            } else {
                jj_last_press = 0;
            }
            if ((e.metaKey || e.ctrlKey) && e.key === 'Enter') {
                e.preventDefault();
                addMessage();
            }
        });

        memoInput.addEventListener('input', () => {
            memoInput.style.height = 'auto';
            memoInput.style.height = (memoInput.scrollHeight) + 'px';
        });

        commandInput.addEventListener('keydown', (e) => {
            const value = commandInput.value;
            const [command, ...args] = value.split(/\s+/);

            if (e.key === 'Tab') {
                e.preventDefault();
                if (command !== 'e' && command !== 'bd') {
                    completionState = { baseCommand: '', originalPartial: '', matches: [], index: -1 };
                    return;
                }

                const currentPartial = args.join(' ');

                if (completionState.matches.length === 0 || currentPartial !== completionState.matches[completionState.index]) {
                    const foundMatches = data.memos
                        .filter(memo => memo.name.startsWith(currentPartial))
                        .sort((a, b) => a.name.localeCompare(b.name));

                    if (foundMatches.length > 0) {
                        completionState = {
                            baseCommand: command,
                            originalPartial: currentPartial,
                            matches: foundMatches.map(m => m.name),
                            index: 0
                        };
                        commandInput.value = `${command} ${completionState.matches[0]}`;
                    }
                } else {
                    completionState.index = (completionState.index + 1) % completionState.matches.length;
                    commandInput.value = `${command} ${completionState.matches[completionState.index]}`;
                }
                return;
            } else if (e.ctrlKey && e.key.toLowerCase() === 'w') {
                e.preventDefault();
                const cursorPosition = commandInput.selectionStart;
                if (cursorPosition === 0) return;

                const textBeforeCursor = value.substring(0, cursorPosition);
                const lastSpaceIndex = textBeforeCursor.trimEnd().lastIndexOf(' ');

                const startIndex = lastSpaceIndex === -1 ? 0 : lastSpaceIndex + 1;

                const newValue = value.substring(0, startIndex) + value.substring(cursorPosition);
                commandInput.value = newValue;
                commandInput.selectionStart = commandInput.selectionEnd = startIndex;
            } else if (e.key === 'Escape' || (e.ctrlKey && e.key.toLowerCase() === 'c')) {
                e.preventDefault();
                enterNormalMode();
            } else if (e.key === 'Enter') {
                e.preventDefault();
                parseAndExecuteCommand(commandInput.value.trim());
                enterNormalMode();
            }

            if (e.key !== 'Tab') {
               completionState = { baseCommand: '', originalPartial: '', matches: [], index: -1 };
            }
        });
        commandInput.addEventListener('blur', () => enterNormalMode());

        modalCancelBtn.addEventListener('click', closeModal);
        deleteCancelBtn.addEventListener('click', closeModal);
        deleteOkBtn.addEventListener('click', closeModal);
        modalOkBtn.addEventListener('click', () => modalOkBtn.onclick());
        modalInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') modalOkBtn.onclick();
        });

        document.addEventListener('keydown', (e) => {
            if (mode === 'normal') {
                if (e.key === 'i' || e.key === 'a') {
                    e.preventDefault();
                    if (selectedItemIndex >= 0 && selectedItemIndex < (data.messages[activeMemoId] || []).length) {
                        enterEditMessageMode();
                    } else {
                        enterInsertMode();
                    }
                } else if (e.key === ':' || e.key === ';') {
                    e.preventDefault();
                    enterCommandMode();
                } else if (e.key === 'j' || e.key === 'k') {
                    e.preventDefault();
                    const messages = data.messages[activeMemoId] || [];
                    const itemCount = messages.length;

                    if (e.key === 'j') {
                        selectedItemIndex = Math.min(selectedItemIndex + 1, itemCount);
                    } else { // 'k'
                        selectedItemIndex = Math.max(selectedItemIndex - 1, -1);
                    }
                    updateSelectionUI();

                } else if (e.key === 'g') {
                    const now = Date.now();
                    if (now - gg_last_press < 400) { // gg
                        e.preventDefault();
                        const messages = data.messages[activeMemoId] || [];
                        if (messages.length > 0) {
                            selectedItemIndex = 0;
                            updateSelectionUI();
                        }
                        gg_last_press = 0;
                    } else {
                        gg_last_press = now;
                    }
                } else if (e.shiftKey && e.key.toUpperCase() === 'G') {
                    e.preventDefault();
                    const messages = data.messages[activeMemoId] || [];
                    selectedItemIndex = messages.length;
                    updateSelectionUI();
                } else if (e.shiftKey && e.key.toUpperCase() === 'J') {
                    e.preventDefault();
                    if (data.memos.length < 2) return;
                    const currentIndex = data.memos.findIndex(m => m.id === activeMemoId);
                    const nextIndex = (currentIndex + 1) % data.memos.length;
                    activeMemoId = data.memos[nextIndex].id;
                    selectedMessageId = null;
                    selectedItemIndex = -1;
                    render();
                } else if (e.shiftKey && e.key.toUpperCase() === 'K') {
                    e.preventDefault();
                    if (data.memos.length < 2) return;
                    const currentIndex = data.memos.findIndex(m => m.id === activeMemoId);
                    const prevIndex = (currentIndex - 1 + data.memos.length) % data.memos.length;
                    activeMemoId = data.memos[prevIndex].id;
                    selectedMessageId = null;
                    selectedItemIndex = -1;
                    render();
                }
            }
        });

        // --- 初期化 ---
        const escapeHTML = (str) => str.replace(/[&<>"']/g, m => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'})[m]);
        loadData();
        render();
    });
    </script>
</body>
</html>
