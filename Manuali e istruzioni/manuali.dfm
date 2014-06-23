object Fmanuali: TFmanuali
  Left = 257
  Top = 232
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Manuale'
  ClientHeight = 257
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pagecontrol1: TPageControl
    Left = 0
    Top = 0
    Width = 521
    Height = 257
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = 'Informazioni'
      ImageIndex = 1
      object Memo2: TMemo
        Left = 0
        Top = 4
        Width = 505
        Height = 185
        Color = clGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          'I codici segreti nascono da una delle numerose '
          'contraddizioni disseminate lungo il cammino '
          'dell'#39'umanit'#224'. Appena l'#39'alfabeto divenne lo '
          'strumento perfetto per comunicare a distanza, ci si '
          'accorse che il suo grande pregio di essere chiaro a '
          'tutti diventava un grandissimo difetto quando si '
          'voleva inviare un messaggio riservato, il cui '
          'contenuto, soprattutto per ragioni d'#39'affari e militari, '
          'doveva essere noto solo a chi lo spediva e a chi lo '
          'doveva ricevere. Ecco perci'#242' che, poco dopo '
          'l'#39'invenzione dell'#39'alfabeto, vennero inventati anche i '
          'cifrari, ovvero le scritture in codice segreto. '
          'Nei messaggi cifrati, le parole scritte con il normale '
          'alfabeto vengono smembrate per renderle '
          'irriconoscibili, oppure, le lettere alfabetiche '
          'vengono sostituite dai simboli pi'#249' vari.'
          ''
          'Crittografia vuol dire scrittura segreta, ed '#232' lo  '
          'studio dei codici e delle procedure di crittazione e '
          'decrittazione utilizzati da 2 entit'#224': A e B, per '
          'mantenere segreto, ma integro  e autenticato, un '
          'qualunque messaggio scambiato. '
          'La crittoanalisi, da non confondere con la '
          'crittografia, '#232' invece lo studio delle tecniche '
          'utilizzate da una terza entit'#224': C, per scoprire il '
          'codice, modificarlo e falsificarne l'#8217'autenticit'#224'.')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Manuale'
      object Memo1: TMemo
        Left = 0
        Top = 4
        Width = 505
        Height = 185
        Color = clGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Questo programma offre l'#39'utilizzo di 5 dei pi'#249' famosi '
          'sistemi crittografici del passato e del presente: '
          '1) Il cifrario Atbash;'
          '2) Il cifrario di Saprta (Scitala Spartana); '
          '3) Il cifrario di Cesare e di Saint-Cyr.'
          '4) Il cifrario di Vigenere;  '
          '5) Il cifrario RSA'
          'L'#39'utilizzo '#232' semplice: si procede selezionando nella '
          'finestra principale il cifrario, o i cifrari con cui si '
          'vuole codificare e/o decodificare un lettera, parola '
          'o frase, e si fa clic su '#39'ok'#39'. '
          ''
          'Quando si apre la finestra della relativa scelta '
          'interagire con essa per effettuare codifiche e '
          'decodifiche di messaggi.'
          ''
          'Per ciascuno dei cinque cifrari '#232' disponibile un '
          'ulteriore guida che ne spiega la storia del cifrario e '
          'l'#39'utilizzo del programma.'
          ''
          'E'#39' possibile selezionare pi'#249' di un cifrario alla volta, '
          'e quindi, visualizzarli contemporaneamente anche '
          'tutti e 5 insieme.')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Informazioni Scitala'
      ImageIndex = 2
      object Memo3: TMemo
        Left = 0
        Top = 4
        Width = 505
        Height = 185
        Color = clOlive
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Questo tipo di cifrario venne ideato nell'#39'antica '
          'Sparta intorno al 500 a.C..'
          'Bastava avvolgere una stretta striscia di carta '
          'pergamena attorno ad un cilindro e scrivere di '
          'seguito un messaggio in colonne parallele. '
          'Quando la striscia veniva srotolata le lettere si '
          'trovavano automaticamente trasposte (cio'#232' disposte '
          'in ordine diverso) e il messaggio diventava '
          'incomprensibile agli estranei; poteva cos'#236' essere '
          'trasportato senza particolari precauzioni perch'#232' '
          'solo chi possedeva un cilindro uguale era in grado '
          'di ricostruirlo esattamente')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Manuale'
      ImageIndex = 3
      object Memo4: TMemo
        Left = 0
        Top = 4
        Width = 505
        Height = 185
        Color = clOlive
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          '1) Inserire nella prima casella di testo il messaggio '
          '    che si '#232' scelto per codificare/decodificare;'
          ''
          '2) Selezionare l'#39'operazione che si vuole eseguire'
          '    (codificazione o decodificazione);'
          ''
          '3) inserire la chiave numerica;'
          ''
          '4) Cliccare sull'#39'apposito bottone per eseguire '
          '    l'#39'operazione;'
          ''
          '5) Cliccare sul bottone '#39'cancella'#39';'
          ''
          '6) Rieseguire le operazioni dal punto 1.')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Informazioni Cesare'
      ImageIndex = 4
      object Memo5: TMemo
        Left = 0
        Top = 4
        Width = 505
        Height = 185
        Color = clPurple
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Chi, tra i primi, ide'#242' un vero codice cifrato segreto, '
          'che serviva sia per scrivere messaggi ('
          'codificazione) che per decodificarli, fu Giulio '
          'Cesare. Egli applic'#242' la tecnica della "sostituzione", '
          'spostando l'#39'alfabeto di tre posti.'
          ''
          'Prima di passare il Rubicone e attaccare Pompeo '
          '(49 a.C.), Cesare Pronunci'#242' la famosa frase: <<Alea '
          'iacta est>> (il dado '#232' tratto), per significare la sua '
          'decisione di muovere verso Roma. Possiamo '
          'immaginare che la frase fosse un segnale per amici '
          'e alleati che lo aspettavano nella capitale, e che '
          'Cesare l'#39'abbia fatta pervenire in codice, scritta cio'#232': '
          'XIBX FXZQX BPQ. Giulio Cesare, probabilmente '
          'senza saperlo, gett'#242' le basi della crittografia ("'
          'scrittura nascosta").'
          ''
          'Il cifrario di Cesare si continua ad usare tutt'#39'oggi, '
          'ovviamente con sempre nuove complicazioni, e '
          'magari con l'#39'aiuto di un calcolatore.'
          'Alla fine dell'#39' 1800, all'#39'Accademia di Saint-Cyr si '
          'insegnava agli allievi ad usare un cifrario il quale '
          'non era altro che una variazione pratica di quello di '
          'Cesare.'
          ''
          'Questo cifrario si costruisce in modo semplice: In '
          'un cartoncino della misura di una cartolina, si '
          'scrivono in una riga le 26 lettere dell'#39'alfabeto '
          'inglese. Successivamente si prende una striscia di '
          'carta, e, con lo stesso spazio usato in precedenza, '
          'si scrive due volte l'#39'alfabeto. Posizionando la '
          'striscia sotto alle lettere disegnate nel foglio, e '
          'muovendola a destra e a sinistra si pu'#242' scegliere la '
          'lettera sostituitiva del normale alfabeto. Se, ad '
          'esempio, alla lettera A del foglio viene fatta '
          'corrispondere la lettera N della striscia, si avr'#224' '
          'come codice di sistema di codificazione  A=N, '
          'oppure pi'#249' semplicemente chiave =13')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Manuale'
      ImageIndex = 5
      object Memo6: TMemo
        Left = 0
        Top = 4
        Width = 505
        Height = 185
        Color = clPurple
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          '1) Inserire nella prima casella di testo il messaggio '
          '    che si '#232' scelto per codificare/decodificare. '
          ''
          '2) Selezionare l'#39'operazione che si vuole eseguire'
          '    (codificazione o decodificazione);'
          ''
          '3) Selezionare le adeguate opzioni messe a '
          '    disposizione per la scelta effettuata'
          ''
          '4) Inserire la chiave numerica (da 1 a 26 se si '#232' '
          '    scelta l'#39'opzione "solo lettere dell'#39'alfabeto", '
          '    altrimenti da 1 a 256).'
          ''
          '5) Cliccare sull'#39'apposito pulsante per eseguire '
          '    l'#39'operazione.'
          ''
          'A meno che, al punto 3, non '#232' stata scelta '
          'l'#39'opzione: "decodifica NON sapendo la chiave" '
          'comparir'#224' nella casella di testo in basso la stringa '
          'che rappresenta il risultato dell'#39'operazione scelta, '
          'altrimenti, la casella di testo in basso scomparir'#224', e '
          'comparir'#224' invece una nuova scheda della pagina '
          'dove, una volta cliccato su decodifica, si potranno '
          'visualizzare tutte le 26, o 256 possibili '
          'decodificazioni che il computer ha eseguito '
          'automaticamente. Baster'#224' scorrerle una per una '
          'fino a trovare quella che da per risultato una stringa '
          'di senso compiuto.'
          ''
          'Inoltre cliccando sull'#39'apposito bottone, '#232' possibile '
          'salvare su disco un file di testo contenente il '
          'messaggio decodificato scelto.')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Informazioni Vigenere'
      ImageIndex = 8
      object Memo9: TMemo
        Left = 0
        Top = 4
        Width = 505
        Height = 185
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Blaise de Vigenere pubblic'#242' nel 1586 un trattato di '
          'cifre nel quale proponeva tra gli altri un codice che '
          'ebbe grande fortuna e che '#232' ricordato con il suo '
          'nome. '
          'Il metodo si pu'#242' considerare una generalizzazione '
          'del codice di Cesare; invece di spostare sempre '
          'dello stesso numero di posti la lettera da cifrare, '
          'questa viene spostata di un numero di posti '
          'variabile, determinato in base ad una parola chiave, '
          'da concordarsi tra mittente e destinatario, e da '
          'scriversi sotto il messaggio, carattere per carattere; '
          'la parola '#232' detta verme, per il motivo che, essendo '
          'in genere molto pi'#249' corta del messaggio, deve '
          'essere ripetuta molte volte sotto questo.'
          ''
          'Il testo cifrato si ottiene spostando la lettera chiara '
          'di un numero fisso di caratteri, pari al numero '
          'ordinale della lettera corrispondente del verme. Di '
          'fatto si esegue una somma aritmetica tra l'#39'ordinale '
          'del chiaro (A = 0, B = 1, C = 2 ...) e quello del '
          'verme; se si supera l'#39'ultima lettera, la Z, si '
          'ricomincia dalla A, secondo la logica delle '
          'aritmetiche finite. '
          ''
          'Il vantaggio rispetto ai codici mono-alfabetici '#232' '
          'evidente: la stessa lettera del testo chiaro non '#232' '
          'sempre cifrata con la stessa lettera; e questo rende '
          'pi'#249' difficile l'#39'analisi statistica del testo cifrato e la '
          'decrittazione. ')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Manuale'
      ImageIndex = 9
      object Memo10: TMemo
        Left = 0
        Top = 4
        Width = 505
        Height = 185
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          '1) Inserire nella prima casella di testo il messaggio '
          '    che si '#232' scelto per codificare/decodificare; '
          ''
          '2) Selezionare l'#39'operazione che si vuole eseguire'
          '    (codificazione o decodificazione);'
          ''
          '3) Selezionare il modo in cui si vole eseguire'
          '    l'#39'operazione (se con solo i 26 caratteri '
          '   dell'#39'alfabeto inglese, oppure con tutti i 256 del '
          '   codice ASCII);  '
          ''
          '4) Inserire il '#39'verme'#39' nella casella di testo pi'#249' stretta.'
          '    Qui dentro saranno accettate esclusivamente i 26 '
          '    caratteri dell'#39'alfabeto inglese qualunque sia stata '
          '    la scelta al punto 3; '
          ''
          '5) Cliccare sull'#39'apposito pulsante per iniziare '
          '    l'#39'operazione.'
          ''
          'Nella terza casella di testo comparir'#224' il messaggio '
          'codificato/decodificato.'
          ''
          'Se si vuole ripetere l'#39'operazione, prima cliccare sul '
          'pulsante '#39'cancella'#39' e poi ripartire dal punto 1.')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'Informazioni Atbash'
      ImageIndex = 10
      object Memo11: TMemo
        Left = 0
        Top = 4
        Width = 505
        Height = 185
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Il Cifrario Atbash '#232' di origini ebraiche, e  il libro di '
          'Geremia nella Bibbia ne testimonia un primo '
          'utilizzo per cifrare la parola Babele;'
          ' '
          'Il cifrario funziona cos'#236': la prima lettera dell'#39'alfabeto '
          'ebraico (Aleph) viene cifrata con l'#39'ultima (Taw), la '
          'seconda (Beth) viene cifrata con la penultima (Shin) '
          'e cos'#236' via;'
          'Da queste quattro lettere '#232' derivato il '
          'nome di Atbash (A con T, B con SH) per questo '
          'codice.'
          ''
          'Come si pu'#242' notare, per'#242', questo '#232' un cifrario di '
          'scarsissima fiducia, infatti non necessita di un '
          'verme o una chiave, che ne determina '
          'l'#39'inattaccabilit'#224' da parte di terze persone, perch'#232' '
          'questo '#232' gi'#224' predefinito (Primo=Ultimo, '
          'Secondo=Penultimo.. e cos'#236' via)')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'Manuale'
      ImageIndex = 11
      object Memo12: TMemo
        Left = 0
        Top = 4
        Width = 505
        Height = 185
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          '1) Inserire nella prima casella di testo il messaggio '
          '    che si '#232' scelto per codificare/decodificare; '
          ''
          '2) Selezionare il modo in cui si vole eseguire'
          '    l'#39'operazione (se con solo i 26 caratteri '
          '   dell'#39'alfabeto inglese, oppure con tutti i 256 del '
          '   codice ASCII);  '
          ''
          '3) Cliccare sull'#39'apposito pulsante per iniziare '
          '    l'#39'operazione .'
          ''
          'Nella seconda casella di testo comparir'#224' il '
          'messaggio '
          'codificato/decodificato.'
          '')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet13: TTabSheet
      Caption = 'Informazioni RSA'
      ImageIndex = 12
      object Memo13: TMemo
        Left = 0
        Top = 4
        Width = 505
        Height = 185
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Nel 1977 tre matematici del MIT di Boston, Rivest, '
          'Shamir e Adleman elaborarono un sistema '
          'crittografico a chiave pubblica che  divent'#242' famoso '
          'con il nome RSA. '
          'L'#39'idea da cui partirono si basava sulla difficolt'#224' di  '
          'fattorizzare un numero che sia il prodotto di due '
          'numeri primi molto grandi.'
          'Il sistema si basa inoltre su alcuni importanti risultati '
          'matematici ottenuti nei secoli '#39'700 e '#39'800 da '
          'matematici come Eulero, Fermat e Gauss.'
          ''
          'In sintesi l'#39'idea su cui si basa il sistema '#232' la '
          'seguente:'
          'Ci sono due individui, il mittente e il destinatario. '
          'Il mittente vuole inviare un messaggio al '
          'destinatario e vuole evitare che una terza persona '
          'possa, intercettando il messaggio, comprenderne il '
          'significato. '
          'Il destinatario costruisce un lucchetto a due chiavi, '
          'una, K1, per chiudere (codificare) e una, K2, per '
          'aprire (decodificare).'
          'Il destinatario rende pubblica la chiave K1. '
          'Il mittente la utilizza per codificare il messaggio che '
          'vuole inviare  al  destinatario.  '
          'Per decodificare il messaggio crittato si  pu'#242' usare '
          'solo la chiave K2 che '#232' nota solo al destinatario.  '
          ''
          'La sicurezza del sistema consiste nel fatto che una '
          'terza persona pur conoscendo la chiave pubblica '
          'K1 (e,n) e il messaggio crittato c per decodificarlo '
          'deve trovare i fattori primi di n, P e Q. Ma '#232' molto '
          'difficile scomporre in fattori primi un numero molto '
          'grande (nel 1994 per '#39'rompere'#39' una chiave RSA '
          'di 129 cifre sono stati utilizzati 8 mesi di lavoro di '
          '600 gruppi sparsi in 25 paesi e sono stati utilizzati '
          '1600 computer). '
          ''
          'RSA rimase per qualche anno nel limbo delle belle '
          'idee, ma poi con la sempre maggiore diffusione di '
          'Internet ha conosciuto un successo enorme, ed '#232' '
          'ancor oggi il cifrario a chiave pubblica pi'#249' usato. '
          'Quasi tutte le operazioni sicure sul web usano oggi '
          'certificati basati su RSA. '
          ''
          'Per creare il sistema bisogna operare in questo '
          'modo:'
          ''
          '1) Trovare due numeri primi molto grandi P e Q tale '
          '    che il prodotto o modulo '#232' detto N=PQ; '
          '2) Scegliere E minore di N tale che sia primo con '
          '    (P-1)(Q-1), il che significa non avere fattori '
          '    primi in comune. E deve essere dispari. '
          '    (P-1)(Q-1) non pu'#242' essere primo perch'#233' '#232' pari;'
          '3) Calcolare l'#39'inverso di E, D,/ DE=1mod (P-1)(Q-1); '
          '    N.B. Il modulo esegue una operazione di '
          '    divisione intera tra DE e (P-1)(Q-1) con resto 1. '
          '4) Il testo cifrato si ottiene con l'#39'operazione: '
          '    C=(T^E)moduloPQ dove T '#232' il testo in chiaro'
          '    (intero positivo), "^" indica l'#39'esponenziale,'
          '    e C il il testo cifrato; '
          '5) Il testo decifrato, R, si ottiene cos'#236': '
          '    R=(C^D) mod PQ '
          '   dove C indica sempre il testo cifrato'
          ''
          'Indirizzo di un demo di RSA in internet:'
          'http://www.profactor.at/~wstoec/rsa.html')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet14: TTabSheet
      Caption = 'Manuale'
      ImageIndex = 13
      object Memo14: TMemo
        Left = 0
        Top = 4
        Width = 505
        Height = 185
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Se non si dispongono le informazioni necessarie'
          '(chiave pubblica E, o quella privata D, e prodotto N '
          'dei due numeri primi, P e Q), guardare i punti dall'#39'1 '
          'al 10, altrimenti passare direttamente al punto 11. '
          ''
          '1) Selezionare la frase:"Crea chiavi";'
          ''
          '2) Selezionare l'#39'operazione che si vuole svolgere '
          '    (di codifica o di decodifica);'
          ''
          '3) Selezionare il primo numero primo ( P ), facendo '
          '    scorrere la prima barra di scorrimento;'
          ''
          '4) Selezionare il secondo numero primo ( Q ), '
          '    facendo scorrere la seconda barra di '
          '    scorrimento;'
          '5) Cliccare sul pulsante "Calcola insieme";'
          ''
          '6) Selezionare un numero comparso nella lista '
          '    sottostante il pulsante, esso rappresenter'#224' la '
          '    chiave pubblica: E;'
          ''
          '7) Cliccare sul pulsante "Chiavi", per creare anche '
          '    quella privata: D;'
          ''
          '8) Inserire il messaggio da operare;'
          ''
          '9) Cliccare sul pulsante "codifica/decodifica";'
          ''
          '10) Comparir'#224' nella casella di testo in basso a '
          '      destra il messaggio codificato/decodificato;'
          ''
          '11) Cancellare;'
          ''
          '12) Selezionare la frase "Opera conosciendo gi'#224' le '
          '       chiavi);'
          ''
          '13) Selezionare l'#39'operazione che si vuole svolgere '
          '      (codificare o decodificare);'
          ''
          '14) Inserire nelle apposite casselle i valori N e E/D;'
          ''
          '15) Inserire nella casella di testo in basso a sinistra '
          '      il messaggio da codificare o decodificare;'
          ''
          '16) Cliccare sull'#39'apposito pulsante: "cod/dec";'
          ''
          '17) Comparir'#224' nella casella di testo in basso a '
          '      destra il messaggio codificato/decodificato.'
          ''
          '18)Cancellare'
          ''
          
            '--------------------------------N.B.:---------------------------' +
            '--'
          'Il programma, per funzionare deve verificare '
          'l'#39'esistenza del file "Elenco.dat", situato nella '
          'medesima directory del programma.'
          'Se questo file viene rimosso, rinominato o spostato, '
          'il programma chiede di rigenerarlo.'
          'La procedura per ricrearlo '#232':'
          ''
          '1) Inserire il numero di numeri primi che si vogliono '
          '    creare (Il programma per default indica il numero '
          '    30, e si consiglia di lasciare tale numero);'
          ''
          '2) Cliccare sul pulsante "Crea file con i primi 30 '
          'numeri primi";'
          ''
          '3) Chiudere la finestra al termine dell'#39'operazione.'
          ''
          'Il file elenco '#232' necessario per lo svolgimento del '
          'cifrario, perch'#232' contiene i numeri primi che deve '
          'usare per individuare P e Q, in modo tale da non'
          'rigenerarli ogni volta poich'#232' si impiegherebbe un'#39' '
          'enorme spreco di tempo.'
          '')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object Button8: TButton
    Left = 208
    Top = 220
    Width = 75
    Height = 25
    Caption = 'Chiudi'
    TabOrder = 1
    OnClick = Button1Click
  end
end
